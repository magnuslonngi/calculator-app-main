import 'package:flutter/material.dart';
import 'calculator_model.dart';
import 'theme/theme_model.dart';
import 'package:provider/provider.dart';

class DeleteButton extends StatefulWidget {
  const DeleteButton({
    super.key,
  });

  @override
  State<DeleteButton> createState() => _DeleteButtonState();
}

class _DeleteButtonState extends State<DeleteButton> {
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
                width: currentWidth > 1440 ? 101 : 60,
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
                    calculatorModel.deleteValue();
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
                          "DEL",
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
