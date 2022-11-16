// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_notifier.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../widgets/custom_loading.dart';
import 'controller.dart';
import 'widgets/body.dart';

class ConfirmPhoneNumberPage extends GetView<ConfirmPhoneNumberController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: controller.obx(
            (state) => ConfirmPhoneNumberBody(controller: controller),
            onLoading: CustomLoading()),
      ),
    );
  }
}
