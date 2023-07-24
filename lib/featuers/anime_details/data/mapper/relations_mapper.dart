import 'package:anime_list/core/extentions/extentions.dart';
import 'package:anime_list/featuers/home/data/mapper/manga_mapper/authors_mapper.dart';
import '../../domain/model/relations_model.dart';
import '../response/relations_response.dart';

extension RelationsMapper on RelationsResponse {
  RelationsModel toDomain() {
    return RelationsModel(
      relation: relation.onNull(),
      entry: entry?.map((e) => e.toDomain()).toList(),
    );
  }
}
