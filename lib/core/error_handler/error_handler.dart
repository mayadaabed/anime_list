import 'package:dio/dio.dart';

import '../../config/constants.dart';

class Failer {
  int code;
  String message;

  Failer(this.code, this.message);
}

class ErrorHandler implements Exception {
  late Failer failer;

  ErrorHandler.handle(dynamic error) {
    if (error is DioError) {
      failer = Failer(
          error.response!.statusCode ?? ResponseCode.BAD_REQUEST.value,
          error.response!.data[ApiConstants.message] ??
              error.response!.data[ApiConstants.errors] ??
              ApiConstants.error);
    } else {
      failer = Failer(
        ResponseCode.BAD_REQUEST.value,
        ApiConstants.badRequest,
      );
    }
  }
}

enum ResponseCode {
  SUCCESS,
  CREATED,
  ACCEPTED,
  NO_CONTENT,
  BAD_REQUEST,
  UNAUTHORIZED,
  FORBIDDEN,
  NOT_FOUND,
  METHOD_NOT_ALLOWED,
  CONFLICT,
  INTERNAL_SERVER_ERROR,
  BAD_GATEWAY,
  SERVICE_UNAVAILABLE,
  GATEWAY_TIMEOUT,
  NO_INTERNET_CONNECTION,
}

extension ResponseCodeExtension on ResponseCode {
  int get value {
    switch (this) {
      case ResponseCode.SUCCESS:
        return 200;
      case ResponseCode.CREATED:
        return 201;
      case ResponseCode.ACCEPTED:
        return 202;
      case ResponseCode.NO_CONTENT:
        return 204;
      case ResponseCode.BAD_REQUEST:
        return 400;
      case ResponseCode.UNAUTHORIZED:
        return 401;
      case ResponseCode.FORBIDDEN:
        return 403;
      case ResponseCode.NOT_FOUND:
        return 404;
      case ResponseCode.METHOD_NOT_ALLOWED:
        return 405;
      case ResponseCode.CONFLICT:
        return 409;
      case ResponseCode.INTERNAL_SERVER_ERROR:
        return 500;
      case ResponseCode.BAD_GATEWAY:
        return 502;
      case ResponseCode.SERVICE_UNAVAILABLE:
        return 503;
      case ResponseCode.GATEWAY_TIMEOUT:
        return 504;
      case ResponseCode.NO_INTERNET_CONNECTION:
        return -1; // Or any appropriate value for "No Internet Connection"
    }
  }
}
