import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import '../../config/constants.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class AppApi {
  factory AppApi(
    Dio dio, {
    String baseUrl,
  }) = _AppApi;


}
