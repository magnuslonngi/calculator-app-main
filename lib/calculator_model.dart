// ignore_for_file: curly_braces_in_flow_control_structures
import 'package:flutter/material.dart';

class CalculatorModel extends ChangeNotifier {
  String displayText = '0';
  String firstResult = '';
  String finalResult = '';
  String firstOperator = '';
  String lastOperator = '';
  double firstNumber = 0;
  double secondNumber = 0;
  bool performEqual = false;

  void performOperation(String sign) {
    if (sign == '+' || sign == '-' || sign == 'x' || sign == "/") {
      if (firstNumber == 0)
        firstNumber = double.parse(firstResult);
      else
        secondNumber = double.parse(firstResult);

      if (!performEqual) {
        switch (firstOperator) {
          case '+':
            finalResult = addition();
            break;
          case '-':
            finalResult = substraction();
            break;
          case 'x':
            finalResult = multiplication();
            break;
          case '/':
            finalResult = division();
            break;
        }
      }

      performEqual = false;
      firstOperator = sign;
      lastOperator = firstOperator;
      firstResult = '';
    } else if (sign == '.') {
      if (!firstResult.contains('.')) firstResult += '.';
      finalResult = firstResult;
    } else {
      firstResult += sign;
      finalResult = firstResult;
    }

    displayText = addCommasToNumber(finalResult);
    notifyListeners();
  }

  void equalOperation() {
    secondNumber = double.parse(firstResult);
    switch (lastOperator) {
      case '+':
        finalResult = addition();
        break;
      case '-':
        finalResult = substraction();
        break;
      case 'x':
        finalResult = multiplication();
        break;
      case '/':
        finalResult = division();
        break;
    }

    displayText = addCommasToNumber(finalResult);
    performEqual = true;
    notifyListeners();
  }

  void resetValues() {
    displayText = '0';
    firstResult = '';
    finalResult = '';
    firstOperator = '';
    lastOperator = '';
    firstNumber = 0;
    secondNumber = 0;
    notifyListeners();
  }

  void deleteValue() {
    if (displayText.length == 1) {
      displayText = '0';
      firstResult = '';
      finalResult = '';
    } else {
      finalResult = finalResult.substring(0, finalResult.length - 1);
      finalResult = finalResult.replaceAll(',', '');
      finalResult = addCommasToNumber(finalResult);
      firstResult = finalResult;
      displayText = finalResult;
    }
    notifyListeners();
  }

  String addCommasToNumber(String numberString) {
    if (numberString.isEmpty) {
      return '0';
    }

    List<String> parts = numberString.split('.');
    String integerPart = parts[0];
    String decimalPart = parts.length > 1 ? '.${parts[1]}' : '';

    final int len = integerPart.length;
    final StringBuffer result = StringBuffer();

    for (int i = 0; i < len; i++) {
      if (i > 0 && (len - i) % 3 == 0) {
        result.write(',');
      }
      result.write(integerPart[i]);
    }

    return result.toString() + decimalPart;
  }

  String addition() {
    firstResult = (firstNumber + secondNumber).toString();
    firstNumber = double.parse(firstResult);
    return splitDecimal(firstResult);
  }

  String substraction() {
    firstResult = (firstNumber - secondNumber).toString();
    firstNumber = double.parse(firstResult);
    return splitDecimal(firstResult);
  }

  String multiplication() {
    firstResult = (firstNumber * secondNumber).toString();
    firstNumber = double.parse(firstResult);
    return splitDecimal(firstResult);
  }

  String division() {
    firstResult = (firstNumber / secondNumber).toString();
    firstNumber = double.parse(firstResult);
    return splitDecimal(firstResult);
  }

  String splitDecimal(String number) {
    if (number.contains('.')) {
      List<String> splitNumber = number.split('.');
      if (!(int.parse(splitNumber[1]) > 0)) number = splitNumber.toString();
      return number;
    }
    return number;
  }
}
