import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../../config/constants.dart';

class DioFactory {
  Future<Dio> getDio() async {
    Dio dio = Dio();
    dio.options = BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      receiveTimeout:
          const Duration(seconds: ApiConstants.recieveTimeOutDuration),
      sendTimeout: const Duration(seconds: ApiConstants.sendTimeOutDuration),
    );

    InterceptorsWrapper interceptorsWrapper = InterceptorsWrapper(onRequest:
        (RequestOptions options, RequestInterceptorHandler handler) async {
      return handler.next(options);
    });

    dio.interceptors.add(interceptorsWrapper);

    if (!kReleaseMode) {
      dio.interceptors.add(PrettyDioLogger(
        responseBody: false,
        responseHeader: true,
        request: false,
      ));
    }

    return dio;
  }
}
