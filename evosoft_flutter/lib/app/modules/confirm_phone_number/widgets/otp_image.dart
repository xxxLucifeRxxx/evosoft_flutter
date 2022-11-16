// ignore_for_file: use_key_in_widget_constructors

import 'package:evosoft_flutter/core/utils/percent_size.dart';
import 'package:flutter/material.dart';

class OtpImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.0.hp,
      child: ClipRRect(
        child: Image.asset('assets/images/otp.gif'),
      ),
    );
  }
}
