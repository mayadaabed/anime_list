import '../../../domain/model/manga_models/images_model.dart';
import '../../response/manga_response/images_response.dart';
import 'jpg_mapper.dart';

extension ImagesMapper on ImagesResponse {
  ImagesModel toDomain() {
    return ImagesModel(
      jpg: jpg?.toDomain(),
      webp: webp?.toDomain(),
    );
  }
}
