import 'package:anime_list/core/extentions/extentions.dart';
import '../../../domain/model/manga_models/manga_titles_model.dart';
import '../../response/manga_response/manga_titles_response.dart';

extension MangaTitlesMapper on MangaTitlesReponse {
  MangaTitlesModel toDomain() {
    return MangaTitlesModel(
      type: type.onNull(),
      title: title.onNull(),
    );
  }
}
