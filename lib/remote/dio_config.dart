import 'package:dio/dio.dart';
import 'package:get/get.dart';

class DioConfig {
  String baseUrl;
  String? proxy;
  String? cookiesPath;
  List<Interceptor>? interceptors;
  DioConfig({
    required this.baseUrl,
    this.proxy,
    this.cookiesPath,
    this.interceptors,
  });

  static DioConfig of() => Get.find<DioConfig>();
}
