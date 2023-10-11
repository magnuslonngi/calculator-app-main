import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'calculator_model.dart';
import 'theme/theme_model.dart';

class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CalculatorModel>(
      builder: (calculatorContext, calculatorValue, calculatorChild) {
        final currentWidth = MediaQuery.of(context).size.width;

        return Consumer<ThemeModel>(
          builder: (themeContext, themeValue, themeChild) {
            return Container(
              alignment: Alignment.centerRight,
              width: currentWidth > 1440 ? 540 : 327,
              height: currentWidth > 1440 ? 128 : 88,
              margin: const EdgeInsets.only(bottom: 30),
              padding: const EdgeInsets.only(right: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: themeValue.currentTheme['resultBackground'],
              ),
              child: Container(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  calculatorValue.displayText,
                  style: TextStyle(
                    fontSize: currentWidth > 1440 ? 56 : 40,
                    color: themeValue.currentTheme['primaryText'],
                    fontFamily: 'LeagueSpartan',
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
