// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/custom_loading.dart';
import 'controller.dart';

class SplashPage extends GetView<SplashController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.obx((state) => CustomLoading()),
    );
  }
}