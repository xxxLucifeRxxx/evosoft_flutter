// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../controller.dart';

class ViewImageBody extends StatelessWidget {
  final ViewImageController controller;

  const ViewImageBody({required this.controller});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network('${Get.arguments}'),
    );
  }
  }