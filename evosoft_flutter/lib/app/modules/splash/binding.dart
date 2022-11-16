import 'package:get/instance_manager.dart';

import 'controller.dart';

class SplashBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }
}