// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../../core/theme/text_theme.dart';
import '../../core/values/colors.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final double horizontal;
  final VoidCallback onPressed;
  final Color color;

  const DefaultButton({required this.text, required this.horizontal, required this.color, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: horizontal),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextButton(
          onPressed: onPressed,
          child: Center(
              child: Text(text,
                  style: TextStyle(color: kWhiteColor, fontSize: light_14.fontSize, fontWeight: light_14.fontWeight),))),
    );
  }
}
