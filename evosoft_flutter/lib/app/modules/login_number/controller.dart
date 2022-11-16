import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../../core/utils/get_errors.dart';
import '../../../routes/pages.dart';
import '../../data/services/auth/service.dart';

class LoginNumberController extends GetxController with StateMixin {
  late AuthService auth;
  final maskFormatter = MaskTextInputFormatter(mask: '+7 (###) ###-##-##',);

  TextEditingController numberPhonePhieldController = TextEditingController(text: '');

  @override
  void onInit() {
    auth = Get.find<AuthService>();
    change(null, status: RxStatus.success());
    super.onInit();
  }

  Future<void> receiveCode() async {
    change(null, status: RxStatus.loading());
    final data = await auth.receiveCode(numberPhonePhieldController.text);

    if (VerifyError.verify(data)) {
      change(null, status: RxStatus.success());
      showTopSnackBar(Overlay.of(Get.overlayContext!)!,
          CustomSnackBar.error(message: data.errors));
    } else {
      await Get.offAllNamed(Routes.CONFIRMATION);
    }
  }
}
