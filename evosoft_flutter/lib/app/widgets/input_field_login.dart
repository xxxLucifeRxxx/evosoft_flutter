// ignore_for_file: use_key_in_widget_constructors

import 'package:evosoft_flutter/core/utils/percent_size.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../core/theme/text_theme.dart';
import '../../core/values/colors.dart';

class InputFieldLogin extends StatelessWidget {
  final String hintText;
  final Icon suffixIcon;
  final TextEditingController? textController;
  final MaskTextInputFormatter maskFormat;

   const InputFieldLogin({required this.hintText, required this.suffixIcon, this.textController, required this.maskFormat});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0.wp),
      child: TextField(
        style: light_14,
        textAlign: TextAlign.start,
        controller: textController,
        textAlignVertical: TextAlignVertical.bottom,
        inputFormatters: [maskFormat],
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          suffixIconConstraints: BoxConstraints(maxHeight: 2.0.hp),
          hintText: hintText,
          // filled: true,
          // fillColor: kBackgroundColor,
          // enabledBorder: const UnderlineInputBorder(
          //     borderSide: BorderSide(color: kPrimaryColor)),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: kPrimaryColor)),
        ),
      ),
    );
  }
}
