// ignore_for_file: use_key_in_widget_constructors

import 'package:evosoft_flutter/core/utils/percent_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../../core/theme/text_theme.dart';
import '../controller.dart';

class ResendText extends StatelessWidget {
  final ConfirmPhoneNumberController controller;

  const ResendText({required this.controller});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0.wp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Не получили код?', style: light_14),
          TextButton(onPressed: () => controller.resendCode(), child: const Text('Отправить', style: bold_title1)),
          Obx(() => Text('-  ${controller.count}')),
        ],
      ),
    );
  }
}
