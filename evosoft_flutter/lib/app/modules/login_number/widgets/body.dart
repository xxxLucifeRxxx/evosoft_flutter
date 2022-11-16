// ignore_for_file: use_key_in_widget_constructors

import 'package:evosoft_flutter/core/utils/percent_size.dart';
import 'package:flutter/material.dart';

import '../../../../core/values/colors.dart';
import '../../../widgets/default_button.dart';
import '../../../widgets/input_field_login.dart';
import '../controller.dart';
import 'label.dart';

class LoginNumberBody extends StatelessWidget {
  final LoginNumberController controller;

  const LoginNumberBody({required this.controller});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  LabelLoginNumber(),
                  SizedBox(height: 5.0.hp),
                  InputFieldLogin(
                      textController: controller.numberPhonePhieldController,
                      hintText: '+7 (000) 00-00-000',
                      maskFormat: controller.maskFormatter,
                      suffixIcon: const Icon(Icons.login,
                          color: kHeaderColor, size: 25)),
                  SizedBox(height: 5.0.hp),
                  DefaultButton(
                      text: 'ПОЛУЧИТЬ КОД',
                      color: kPrimaryColor,
                      horizontal: 5.0.wp,
                      onPressed: () => controller.receiveCode()),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
