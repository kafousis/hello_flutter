import "package:dio/dio.dart";
import 'constants.dart' as constants;

class RestClient{

  // immutable object, runtime-constant
  final dio = createClient;

  // *** singleton pattern with Dart's factory constructor ***
  // a) private constructor
  RestClient._internal();

  // b) the one and only instance of this singleton
  static final RestClient _instance = RestClient._internal();

  // c) everytime this class is called, _instance is returned
  factory RestClient() => _instance;
  // **********************************************************

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
      ClientInterceptors(),
    });
    return dio;
  }
}

class ClientInterceptors extends Interceptor {

  @override
  Future<dynamic> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    // do something before request is sent
  }

  @override
  Future<dynamic> onError(DioError dioError, ErrorInterceptorHandler handler) async {
    // do something to error
  }

  @override
  Future<dynamic> onResponse(Response response, ResponseInterceptorHandler handler) async {
    // do something before response
  }
}