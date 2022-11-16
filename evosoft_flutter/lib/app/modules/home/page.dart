// ignore_for_file: use_key_in_widget_constructors

import 'package:evosoft_flutter/app/modules/home/widgets/list_images.dart';
import 'package:evosoft_flutter/core/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text('Главная',),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => controller.logout(),
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: controller.obx((state) => ListImages(controller: controller),
      onEmpty: const CircularProgressIndicator())
    );
  }
}
