import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../../core/utils/get_errors.dart';
import '../../../routes/pages.dart';
import '../../data/services/auth/service.dart';

class ConfirmPhoneNumberController extends GetxController with StateMixin {
  late AuthService auth;
  late Timer timer;
  final count = 60.obs;

  TextEditingController codeFieldController = TextEditingController(text: '');

  @override
  void onInit() {
    auth = Get.find<AuthService>();
    change(null, status: RxStatus.success());
    startTimer();
    super.onInit();
  }

  Future<void> login() async {
    change(null, status: RxStatus.loading());
    final data = await auth.login(codeFieldController.text);

    if (VerifyError.verify(data)) {
      change(null, status: RxStatus.success());
      showTopSnackBar(Overlay.of(Get.overlayContext!)!, CustomSnackBar.error(message: data.errors));
    } else {
      timer.cancel();
      await Get.offAllNamed(Routes.HOME);
    }
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    timer = Timer.periodic(oneSec, (timer) {
      if (count.value == 0) {
        timer.cancel();
      } else {
        count.value--;
      }
    });
  }

  void resendCode() {
    if (count.value == 0) {
      showTopSnackBar(
          Overlay.of(Get.overlayContext!)!,
          const CustomSnackBar.success(message: 'Код отправлен повторно на номер +7 (999) 888-77-66'));
      count.value = 60;
      startTimer();
    }
  }
}
