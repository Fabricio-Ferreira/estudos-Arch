import 'package:dio/dio.dart';
import 'package:estudos/app/shared/constants/base_url.dart';

class CustomDio {
  final Dio client;
  CustomDio(this.client) {
    client.options.baseUrl = baseUrl;
    client.options.connectTimeout = 20000;
    client.options.headers.addAll({'Content-Type': 'application/json'});
  }
}
