import 'constants.dart';

class RequestConstants {
  static const String trendingAnime = '${ApiConstants.baseUrl}/trending/anime';
  static const String manga = '${ApiConstants.baseUrl2}/manga';
  static const String search = '${ApiConstants.baseUrl2}/anime';
  static const String animeDetails = '${ApiConstants.baseUrl2}/anime/{id}/full';
  static const String schedules = '${ApiConstants.baseUrl2}/schedules';
  static const String seasons = '${ApiConstants.baseUrl2}/seasons/now';
}
