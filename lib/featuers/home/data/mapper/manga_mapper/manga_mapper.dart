import '../../../domain/model/manga_models/manga_model.dart';
import '../../response/manga_response/manga_response.dart';
import 'pagination_mapper.dart';
import 'manga_data_mapper.dart';

extension MangaMapper on MangaResponse {
  MangaModel toDomain() {
    return MangaModel(
      pagination: pagination?.toDomain(),
      data: data?.map((e) => e.toDomain()).toList(),
    );
  }
}
