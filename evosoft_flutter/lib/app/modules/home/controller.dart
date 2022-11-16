import 'package:get/get.dart';

import '../../../routes/pages.dart';
import '../../data/services/auth/service.dart';
import 'repository.dart';

class HomeController extends GetxController with StateMixin {
  final HomeRepository repository;
  HomeController(this.repository);

  late AuthService auth;

  @override
  void onInit() async{
    auth = Get.find<AuthService>();
    auth.urlList.value = await repository.loadUrl();
    change(null, status: RxStatus.success());
    super.onInit();
  }

  Future<void>goToViewImage(String imageUrl) async{
    await Get.toNamed(Routes.VIEW_IMAGE, arguments: imageUrl);
  }

  Future<void> logout() async{
    await repository.logout();
    Get.offAllNamed(Routes.LOGIN_NUMBER);
  }

}
