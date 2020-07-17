abstract class IApiBase {
  Future<dynamic> get(String url);
  Future<dynamic> post(String url, Map<String, dynamic> data);
  Future<dynamic> put(String url, Map<String, dynamic> data);
  Future<dynamic> patch(String url, Map<String, dynamic> data);
  Future<dynamic> delete(String url);
}
