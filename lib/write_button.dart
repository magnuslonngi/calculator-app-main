import 'package:flutter/material.dart';
import 'calculator_model.dart';
import 'theme/theme_model.dart';
import 'package:provider/provider.dart';

class WriteButton extends StatefulWidget {
  final String operation;

  const WriteButton({super.key, required this.operation});

  @override
  State<WriteButton> createState() => _WriteButtonState();
}

class _WriteButtonState extends State<WriteButton> {
  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    return Consumer<CalculatorModel>(
      builder: (calculatorContext, calculatorValue, calculatorChild) {
        return Consumer<ThemeModel>(
          builder: (themContext, themeValue, themeChild) {
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
              child: Container(
                width: currentWidth > 1440 ? 101 : 60,
                height: 64,
                padding: const EdgeInsets.only(bottom: 5),
                decoration: BoxDecoration(
                  color: themeValue.currentTheme['buttonTwoOutline'],
                  borderRadius: currentWidth > 1440
                      ? BorderRadius.circular(10)
                      : BorderRadius.circular(5),
                ),
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    calculatorModel.performOperation(widget.operation);
                  },
                  child: MouseRegion(
                    cursor: hovered
                        ? SystemMouseCursors.click
                        : SystemMouseCursors.basic,
                    child: Container(
                      decoration: BoxDecoration(
                        color: hovered
                            ? themeValue.currentTheme['buttonTwoHover']
                            : themeValue.currentTheme['buttonTwo'],
                        borderRadius: currentWidth > 1440
                            ? BorderRadius.circular(10)
                            : BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Container(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            widget.operation,
                            style: TextStyle(
                              fontSize: currentWidth > 1440 ? 40 : 32,
                              color: themeValue.currentTheme['operationText'],
                              fontFamily: "LeagueSpartan",
                            ),
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
