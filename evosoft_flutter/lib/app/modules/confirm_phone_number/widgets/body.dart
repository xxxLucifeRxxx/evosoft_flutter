// ignore_for_file: use_key_in_widget_constructors

import 'package:evosoft_flutter/core/utils/percent_size.dart';
import 'package:flutter/material.dart';

import '../../../../core/values/colors.dart';
import '../../../widgets/default_button.dart';
import '../controller.dart';
import 'confirm_text.dart';
import 'number_phone_text.dart';
import 'otp_image.dart';
import 'pin_code_field.dart';
import 'resend_text.dart';

class ConfirmPhoneNumberBody extends StatelessWidget {
  final ConfirmPhoneNumberController controller;

  const ConfirmPhoneNumberBody({required this.controller});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 5.0.hp),
              OtpImage(),
              SizedBox(height: 5.0.hp),
              ConfirmText(),
              SizedBox(height: 2.0.hp),
              NumberPhoneText(),
              SizedBox(height: 7.0.hp),
              PinCodeField(controller: controller,),
              SizedBox(height: 2.0.hp),
              ResendText(controller: controller),
              SizedBox(height: 2.0.hp),
              DefaultButton(
                text: 'ВОЙТИ',
                color: kPrimaryColor,
                horizontal: 5.0.wp,
                onPressed: () => controller.login(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
