import 'package:get/instance_manager.dart';

import 'controller.dart';

class LoginNumberBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginNumberController>(() => LoginNumberController());
  }
}
