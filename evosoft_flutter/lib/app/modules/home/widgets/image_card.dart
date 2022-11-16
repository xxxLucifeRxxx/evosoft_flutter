// ignore_for_file: use_key_in_widget_constructors

import 'package:evosoft_flutter/core/utils/percent_size.dart';
import 'package:evosoft_flutter/core/values/colors.dart';
import 'package:flutter/material.dart';

import '../controller.dart';

class ImageCard extends StatelessWidget {
  final HomeController controller;
  final int index;
  const ImageCard({required this.controller, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.goToViewImage(controller.auth.urlList[index]),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.0.wp),
        child: Container(
          height: 180,
          width: 330,
          decoration: BoxDecoration(
              color: kWhiteColor,
              boxShadow: const [BoxShadow(blurRadius: 2)],
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: NetworkImage(controller.auth.urlList[index]),
                  fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
