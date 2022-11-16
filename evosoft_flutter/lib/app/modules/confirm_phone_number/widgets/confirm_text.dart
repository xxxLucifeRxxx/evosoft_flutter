// ignore_for_file: use_key_in_widget_constructors

import 'package:evosoft_flutter/core/utils/percent_size.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/text_theme.dart';

class ConfirmText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0.wp),
      child: const Text(
        'Подтверждение номера телефона',
        style: bold_title2,
        textAlign: TextAlign.center,
      ),
    );
  }
}
