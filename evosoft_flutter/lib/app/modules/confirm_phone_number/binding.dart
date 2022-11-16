import 'package:get/instance_manager.dart';

import 'controller.dart';

class ConfirmPhoneNumberBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConfirmPhoneNumberController>(() => ConfirmPhoneNumberController());
  }
}