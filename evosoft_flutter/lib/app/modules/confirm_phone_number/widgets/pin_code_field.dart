// ignore_for_file: use_key_in_widget_constructors

import 'package:evosoft_flutter/core/utils/percent_size.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../core/values/colors.dart';
import '../controller.dart';

class PinCodeField extends StatelessWidget {
  final ConfirmPhoneNumberController controller;

  const PinCodeField({required this.controller});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0.wp),
      child: PinCodeTextField(
        autoDisposeControllers: false,
        controller: controller.codeFieldController,
        appContext: context,
        length: 4,
        animationType: AnimationType.scale,
        pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(5),
            fieldHeight: 50,
            fieldWidth: 40,
            activeFillColor: kBackgroundColor,
            errorBorderColor: kRedColor,
            inactiveColor: kPrimaryColor,
            inactiveFillColor: kBackgroundColor),
        cursorColor: kBlackColor,
        enableActiveFill: true,
        keyboardType: TextInputType.number,
        onCompleted: (v) {
          debugPrint("Completed");
        },
        onChanged: (value) {
          debugPrint(value);
        },
      ),
    );
  }
}
