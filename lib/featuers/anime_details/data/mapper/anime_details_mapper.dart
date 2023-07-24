import '../../domain/model/anime_details_model.dart';
import '../response/anime_details_response.dart';
import 'anime_details_data_mapper.dart';

extension AnimeDetailsMapper on AnimeDetailsResponse {
  AnimeDetailsModel toDomain() {
    return AnimeDetailsModel(
      data: data?.toDomain(),
    );
  }
}
