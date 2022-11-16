import 'package:get/get.dart';

import '../models/app_error.dart';
import '../services/storage/service.dart';

class MyApi extends GetConnect {
  final _myStorage = Get.find<MyStorageService>();

  Future<bool> checkLoggedIn() async {
    final loggedIn = await _myStorage.loggedInOrEmpty();
    if (loggedIn != '') {
      return true;
    } else {
      return false;
    }
  }

  Future<dynamic> receiveCode(String numberPhone) async {
    await Future.delayed(const Duration(seconds: 2));
    if (numberPhone == '+7 (999) 888-77-66') {
      return 'Успешно';
    } else {
      return AppError(errors: 'Введен некорректный номер телефона');
    }
  }

  Future<dynamic> login(String code) async {
    await Future.delayed(const Duration(seconds: 2));
    if (code == '1111') {
      await _myStorage.writeLoggedIn();
      return 'Успешно';
    } else {
      return AppError(errors: 'Вы ввели неверный код');
    }
  }

  Future<void> logout() async {
    await _myStorage.logout();
  }

  Future<List<String>> loadUrl() async {
    final urlFromFile = await _myStorage.urlListOrNull();
    if (urlFromFile != null) {
      return urlFromFile;
    } else {
      final urlList = <String>[];
      for (var i = 1; i < 21; i++) {
        urlList.add('https://picsum.photos/id/$i/200/300');
      }
      await _myStorage.writeUrlList(urlList);
      return urlList;
    }
  }

  Future<void> updateUrl(List<String> urlList) async{
    await _myStorage.writeUrlList(urlList);
  }
}
