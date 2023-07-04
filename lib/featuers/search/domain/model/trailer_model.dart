import 'package:anime_list/featuers/search/domain/model/search_images_model.dart';

class TrailerModel{
   String? youtubeId;
  String? url;
  String? embedUrl;
  SearchImagesModel? images;

  TrailerModel({
    this.youtubeId,
    this.url,
    this.embedUrl,
    this.images,
  });
}