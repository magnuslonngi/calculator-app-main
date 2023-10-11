import 'package:flutter/material.dart';
import 'calculator_model.dart';
import 'theme/theme_model.dart';
import 'package:provider/provider.dart';

class ResetButton extends StatefulWidget {
  const ResetButton({super.key});

  @override
  State<ResetButton> createState() => _ResetButtonState();
}

class _ResetButtonState extends State<ResetButton> {
  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    return Consumer<CalculatorModel>(
      builder: (calculatorContext, calculatorValue, calculatorChild) {
        return Consumer<ThemeModel>(
          builder: (themeContext, themeValue, themeChild) {
            final calculatorModel = calculatorContext.read<CalculatorModel>();

            return MouseRegion(
              onEnter: (_) {
                setState(() {
                  hovered = true;
                });
              },
              onExit: (_) {
                setState(() {
                  hovered = false;
                });
              },
              cursor:
                  hovered ? SystemMouseCursors.click : SystemMouseCursors.basic,
              child: Container(
                width: currentWidth > 1440 ? 227 : 133,
                height: 64,
                padding: const EdgeInsets.only(bottom: 5),
                decoration: BoxDecoration(
                  color: themeValue.currentTheme['buttonThreeOutline'],
                  borderRadius: currentWidth > 1440
                      ? BorderRadius.circular(10)
                      : BorderRadius.circular(5),
                ),
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    calculatorModel.resetValues();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: hovered
                          ? themeValue.currentTheme['buttonThreeHover']
                          : themeValue.currentTheme['buttonThree'],
                      borderRadius: currentWidth > 1440
                          ? BorderRadius.circular(10)
                          : BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(
                          "RESET",
                          style: TextStyle(
                            fontSize: currentWidth > 1440 ? 28 : 20,
                            color: themeValue.currentTheme['secondaryText'],
                            fontFamily: "LeagueSpartan",
                          ),
                        ),
                      ),
                    ),
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
