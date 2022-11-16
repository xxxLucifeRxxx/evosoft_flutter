
import 'package:get/instance_manager.dart';

import '../../data/providers/api.dart';
import 'controller.dart';
import 'repository.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(HomeRepository(MyApi())));
  }
}
