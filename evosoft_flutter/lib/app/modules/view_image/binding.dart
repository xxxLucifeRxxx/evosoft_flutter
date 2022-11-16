import 'package:get/instance_manager.dart';

import 'controller.dart';

class ViewImageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViewImageController>(() => ViewImageController());
  }
}
