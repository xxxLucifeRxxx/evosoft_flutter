// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../core/values/colors.dart';

class CustomLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SpinKitSquareCircle(color: kPrimaryColor);
  }
}