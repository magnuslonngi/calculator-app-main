import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme/theme_model.dart';
import 'write_button.dart';
import 'delete_button.dart';
import 'equal_button.dart';
import 'reset_button.dart';

class OperationPad extends StatelessWidget {
  const OperationPad({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(
      builder: (context, value, child) {
        final currentWidth = MediaQuery.of(context).size.width;

        return Container(
          width: currentWidth > 1440 ? 540 : 327,
          height: currentWidth > 1440 ? 480 : 420,
          padding: currentWidth > 1440
              ? const EdgeInsets.all(35)
              : const EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: value.currentTheme['operationBackground'],
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WriteButton(operation: "7"),
                  WriteButton(operation: "8"),
                  WriteButton(operation: "9"),
                  DeleteButton(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WriteButton(operation: "4"),
                  WriteButton(operation: "5"),
                  WriteButton(operation: "6"),
                  WriteButton(operation: "+"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WriteButton(operation: "1"),
                  WriteButton(operation: "2"),
                  WriteButton(operation: "3"),
                  WriteButton(operation: "-"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WriteButton(operation: "."),
                  WriteButton(operation: "0"),
                  WriteButton(operation: "/"),
                  WriteButton(operation: "x"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ResetButton(),
                  EqualButton(),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
