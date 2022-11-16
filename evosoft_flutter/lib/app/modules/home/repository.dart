import '../../data/providers/api.dart';

class HomeRepository {
  final MyApi api;

  HomeRepository(this.api);

  Future<void> logout() => api.logout();

  Future<List<String>> loadUrl() => api.loadUrl();
}
