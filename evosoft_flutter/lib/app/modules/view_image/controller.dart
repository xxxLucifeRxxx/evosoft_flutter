import 'package:get/get.dart';

import '../../data/services/auth/service.dart';

class ViewImageController extends GetxController with StateMixin {

  late AuthService auth;

  @override
  void onInit() {
    auth = Get.find<AuthService>();
    change(null, status: RxStatus.success());
    super.onInit();
  }

  Future<void> removeImage() async{
    change(null, status: RxStatus.loading());
    await Future.delayed(const Duration(seconds: 2));
    auth.urlList.remove('${Get.arguments}');
    await auth.updateUrlList();
    Get.back();
  }

}
