// ignore_for_file: use_key_in_widget_constructors

import 'package:evosoft_flutter/core/utils/percent_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller.dart';
import 'image_card.dart';

class ListImages extends StatelessWidget {

  final HomeController controller;
  const ListImages({required this.controller});
  
  @override
  Widget build(BuildContext context) {
    return Obx(()=> ListView.separated(
        separatorBuilder: (context, index) => SizedBox(height: 4.0.wp,),
        padding: const EdgeInsets.all(10),
        itemCount: controller.auth.urlList.length,
        itemBuilder:(context, index) => ImageCard(controller: controller, index: index,)),
    );
  }

  

}
