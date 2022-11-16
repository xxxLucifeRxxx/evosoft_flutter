// ignore_for_file: use_key_in_widget_constructors

import 'package:evosoft_flutter/core/utils/percent_size.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/text_theme.dart';

class NumberPhoneText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0.wp),
      child: const Text('Введите код отправленный на +79998887766',
          style: light_14),
    );
  }
}
