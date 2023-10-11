import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'calculator_model.dart';
import '/theme/theme_model.dart';
import 'header.dart';
import 'result.dart';
import 'operation_pad.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CalculatorModel()),
      ChangeNotifierProvider(create: (context) => ThemeModel()),
    ],
    child: const Calculator(),
  ));
}

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(
      builder: (context, value, child) {
        return MaterialApp(
          home: Scaffold(
            backgroundColor: value.currentTheme['mainBackground'],
            body: const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Header(),
                  Result(),
                  OperationPad(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
