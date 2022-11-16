// ignore_for_file: use_key_in_widget_constructors

import 'package:evosoft_flutter/core/utils/percent_size.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/text_theme.dart';

class LabelLoginNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0.wp),
      child: const Text(
        'Введите номер Вашего телефона. На него придет СМС с кодом подтверждения.',
        textAlign: TextAlign.center,
        style: bold_title2,
      ),
    );
  }
}
