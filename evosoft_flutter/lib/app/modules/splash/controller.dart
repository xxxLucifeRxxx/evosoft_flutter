import 'package:get/get.dart';

import '../../../routes/pages.dart';
import '../../data/services/auth/service.dart';

class SplashController extends GetxController with StateMixin{
  late AuthService auth;

  @override
  void onInit() {
    change(null, status: RxStatus.success());
    auth = Get.find<AuthService>();
    super.onInit();
  }

  @override
  void onReady() async{
    final loggedIn = await auth.loggedIn();
    if(loggedIn){
      await Get.offAllNamed(Routes.HOME);
    } else {
      await Get.offAllNamed(Routes.LOGIN_NUMBER);
    }
    super.onReady();
  }
}