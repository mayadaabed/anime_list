import 'package:anime_list/core/extentions/extentions.dart';
import '../../../domain/model/manga_models/published_model.dart';
import '../../response/manga_response/published_response.dart';
import 'prop_mapper.dart';

extension PublishedMapper on PublishedResponse {
  PublishedModel toDomain() {
    return PublishedModel(
      from: from.onNull(),
      to: to.onNull(),
      prop: prop?.toDomain(),
      string: string.onNull(),
    );
  }
}
