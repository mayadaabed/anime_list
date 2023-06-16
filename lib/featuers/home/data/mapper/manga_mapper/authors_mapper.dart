import 'package:anime_list/core/extentions/extentions.dart';
import '../../../domain/model/manga_models/authors_model.dart';
import '../../response/manga_response/authors_response.dart';

extension AuthorsMapper on AuthorsResposne {
  AuthorsModel toDomain() {
    return AuthorsModel(
      malId: malId.onNull(),
      type: type.onNull(),
      name: name.onNull(),
      url: url.onNull(),
    );
  }
}
