// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/values/colors.dart';
import '../../widgets/custom_loading.dart';
import 'controller.dart';
import 'widgets/body.dart';

class ViewImagePage extends GetView<ViewImageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text('Просмотр изображения'),
        actions: [
          IconButton(
            onPressed: () => controller.removeImage(),
            icon: const Icon(Icons.delete),
          )
        ],
        ),
      body: controller.obx((state) => ViewImageBody(controller: controller),
      onLoading: CustomLoading())
    );
  }
}