import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_toggle.dart';
import 'theme/theme_model.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(
      builder: (context, value, child) {
        final currentWidth = MediaQuery.of(context).size.width;

        return Container(
          width: currentWidth > 1440 ? 533 : 320,
          height: 42,
          margin: const EdgeInsets.only(bottom: 30, top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    " calc",
                    style: TextStyle(
                      fontSize: 32,
                      color: value.currentTheme[
                          'primaryText'], // Access theme model property
                      fontFamily: 'LeagueSpartan',
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: Text(
                      "THEME",
                      style: TextStyle(
                        fontSize: 12,
                        color: value.currentTheme[
                            'primaryText'], // Access theme model property
                        fontFamily: 'LeagueSpartan',
                      ),
                    ),
                  ),
                  const ThemeToggle(),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
