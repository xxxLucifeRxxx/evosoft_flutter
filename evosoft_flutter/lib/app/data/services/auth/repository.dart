import '../../providers/api.dart';

class AuthRepository{
  final MyApi api;
  
  AuthRepository(this.api);

  Future<bool> checkLoggedIn() async => await api.checkLoggedIn();

  Future<dynamic> receiveCode(String numberPhone) async => await api.receiveCode(numberPhone);

  Future<dynamic> login(String code) async => await api.login(code);

  Future<List<String>> loadUrl() => api.loadUrl();

  Future<void> updateUrl(List<String> urlList) => api.updateUrl(urlList);
}