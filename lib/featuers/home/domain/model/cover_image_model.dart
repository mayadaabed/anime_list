import 'package:anime_list/featuers/home/domain/model/meta_model.dart';

class CoverImageModel {
  String? tiny;
  String? large;
  String? small;
  String? medium;
  String? original;
  MetaModel? meta;

  CoverImageModel({
    this.tiny,
    this.large,
    this.small,
    this.medium,
    this.original,
    this.meta,
  });
}
