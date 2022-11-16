import 'package:get/get.dart';

import '../../providers/api.dart';
import 'repository.dart';

class AuthService extends GetxService {
  Future<AuthService> init() async {
    repository = AuthRepository(MyApi());
    return this;
  }

  final urlList = <String>[].obs;

  late AuthRepository repository;

  Future<void> updateUrlList() async{
    await repository.updateUrl(urlList);
  }

  Future<dynamic> receiveCode(String numberPhone) async {
    final data = await repository.receiveCode(numberPhone);
    return data;
  }

  Future<dynamic> login(String code) async {
    final data = await repository.login(code);
    urlList.value = await repository.loadUrl();
    return data;
  }

  Future<bool> loggedIn() async {
    final checkLoggedIn = await repository.checkLoggedIn();
    if (checkLoggedIn) {
      return true;
    } else {
      return false;
    }
  }
}
