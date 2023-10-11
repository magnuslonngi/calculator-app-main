import 'package:flutter/material.dart';
import 'calculator_model.dart';
import 'theme/theme_model.dart';
import 'package:provider/provider.dart';

class EqualButton extends StatefulWidget {
  const EqualButton({super.key});

  @override
  State<EqualButton> createState() => _EqualButtonState();
}

class _EqualButtonState extends State<EqualButton> {
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
                  color: themeValue.currentTheme['buttonOneOutline'],
                  borderRadius: currentWidth > 1440
                      ? BorderRadius.circular(10)
                      : BorderRadius.circular(5),
                ),
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    calculatorModel.equalOperation();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: hovered
                          ? themeValue.currentTheme['buttonOneHover']
                          : themeValue.currentTheme['buttonOne'],
                      borderRadius: currentWidth > 1440
                          ? BorderRadius.circular(10)
                          : BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(
                          "=",
                          style: TextStyle(
                            fontSize: currentWidth > 1440 ? 28 : 20,
                            color: themeValue.currentTheme['equalText'],
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
