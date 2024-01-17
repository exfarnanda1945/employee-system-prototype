import 'package:flutter/material.dart';

class TextFormFieldContainer extends StatelessWidget {
  TextFormFieldContainer({
    super.key,
    required this.titleText,
    required this.textFormField,
    this.space = 8,
  });

  final TextFormField textFormField;
  final Text titleText;
  double space;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleText,
        const SizedBox(
          height: 8,
        ),
        textFormField
      ],
    );
  }
}
