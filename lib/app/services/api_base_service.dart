import 'package:estudos/app/app_module.dart';
import 'package:estudos/app/interfaces/api_base_interface.dart';
import 'package:estudos/app/services/custom_dio.dart';

class ApiBaseService implements IApiBase {
  static final _dio = AppModule.to.getDependency<CustomDio>();
  @override
  Future delete(String url) async {
    return await _dio.client.delete(url);
  }

  @override
  Future get(String url) async {
    return await _dio.client.get(url);
  }

  @override
  Future patch(String url, Map<String, dynamic> data) async {
    return await _dio.client.patch(url, data: data);
  }

  @override
  Future post(String url, Map<String, dynamic> data) async {
    return await _dio.client.post(url, data: data);
  }

  @override
  Future put(String url, Map<String, dynamic> data) async {
    return await _dio.client.put(url, data: data);
  }
}
