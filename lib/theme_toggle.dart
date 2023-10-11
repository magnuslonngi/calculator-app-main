// ignore_for_file: curly_braces_in_flow_control_structures
import 'package:flutter/material.dart';
import 'theme/theme_model.dart';
import 'package:provider/provider.dart';

class ThemeToggle extends StatefulWidget {
  const ThemeToggle({super.key});

  @override
  State<ThemeToggle> createState() => _ThemeToggleState();
}

class _ThemeToggleState extends State<ThemeToggle> {
  double themeAlignment = -0.8;
  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    final themeModel = context.read<ThemeModel>();
    return Consumer<ThemeModel>(
      builder: (context, value, child) => Container(
        width: 71,
        height: 42,
        margin: const EdgeInsets.only(left: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "1",
                    style: TextStyle(
                      fontSize: 12,
                      color: value.currentTheme['primaryText'],
                      fontFamily: 'LeagueSpartan',
                    ),
                  ),
                  Text(
                    "2",
                    style: TextStyle(
                      fontSize: 12,
                      color: value.currentTheme['primaryText'],
                      fontFamily: 'LeagueSpartan',
                    ),
                  ),
                  Text(
                    "3",
                    style: TextStyle(
                      fontSize: 12,
                      color: value.currentTheme['primaryText'],
                      fontFamily: 'LeagueSpartan',
                    ),
                  ),
                ],
              ),
            ),
            MouseRegion(
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
              child: GestureDetector(
                onTap: () => setState(() {
                  themeModel.toggleTheme();
                  if (themeAlignment == -0.8)
                    themeAlignment = 0;
                  else if (themeAlignment == 0)
                    themeAlignment = 0.8;
                  else
                    themeAlignment = -0.8;
                }),
                child: Container(
                  width: 71,
                  height: 26,
                  decoration: BoxDecoration(
                    color: value.currentTheme['operationBackground'],
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: AnimatedAlign(
                    duration: const Duration(
                      milliseconds: 150,
                    ),
                    alignment: Alignment(themeAlignment, 0),
                    child: Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        color: hovered
                            ? value.currentTheme['buttonOneHover']
                            : value.currentTheme['buttonOne'],
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
