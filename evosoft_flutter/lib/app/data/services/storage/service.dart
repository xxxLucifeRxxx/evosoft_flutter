// ignore_for_file: constant_identifier_names

import 'package:get_storage/get_storage.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:shared_preferences/shared_preferences.dart';

const LOGIN_KEY = 'login_key';
const URL_KEY = 'url_key';

class MyStorageService extends GetxService {
  Future<MyStorageService> init() async {
    prefs = await SharedPreferences.getInstance();
    box = GetStorage();
    return this;
  }

  late SharedPreferences prefs;

  GetStorage? box;

  writeLoggedIn() async {
    final loggedIn = box!.write(LOGIN_KEY, 'logged_in');
    return loggedIn;
  }

  loggedInOrEmpty() async{
    final loggedIn = await box!.read(LOGIN_KEY);
    if (loggedIn == null) return '';
    return loggedIn;
  }

  _deleteLoggedIn() async{
    return await box!.remove(LOGIN_KEY);
  }

//======================================================SHARED PREFERENCES==============================================

  Future<void> writeUrlList(List<String> imagesUrl) async{
    await prefs.setStringList(URL_KEY, imagesUrl);
  }

  Future<List<String>?> urlListOrNull() async{
    final List<String>? urlList = prefs.getStringList(URL_KEY);
    return urlList;
  }

  Future<void> _deleteUrlList() async{
    await prefs.remove(URL_KEY);
  }

  Future<void> logout() async{
    await _deleteLoggedIn();
    await _deleteUrlList();
  }
}
