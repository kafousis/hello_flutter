import "package:dio/dio.dart";
import 'package:flutter/cupertino.dart';
import 'error_interceptor.dart';
import '../constants.dart' as constants;

class RestClient{

  // immutable object, runtime-constant
  final dio = createClient;

  // private named constructor
  RestClient._internal();

  // the one and only instance of this singleton
  static final RestClient _instance = RestClient._internal();

  // everytime this class is called, _instance is returned
  factory RestClient() => _instance;

  // same for every instance
  // can be accessed without creating an object
  static Dio createClient(){

    var dio = Dio(BaseOptions(
      baseUrl: constants.base_url,
      receiveTimeout: 15000, // 15 seconds
      connectTimeout: 15000,
      sendTimeout: 15000,
    ));

    dio.interceptors.addAll({
       ErrorInterceptor(),
       SimpleInterceptor()
    });
    return dio;
  }
}

class SimpleInterceptor extends Interceptor {

  @override
  Future<dynamic> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    debugPrint('Http Request: ${options.method} ${options.path}');
    return handler.next(options);
  }
}