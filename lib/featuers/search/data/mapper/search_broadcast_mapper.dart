import 'package:anime_list/core/extentions/extentions.dart';
import 'package:anime_list/featuers/search/data/response/search_broadcast_response.dart';
import '../../domain/model/search_broadcast_model.dart';

extension SearchBroadcastMapper on SearchBroadcastResponse {
  SearchBroadcastModel toDomain() {
    return SearchBroadcastModel(
      day: day.onNull(),
      time: time.onNull(),
      timezone: timezone.onNull(),
      string: string.onNull(),
    );
  }
}
