import 'package:anime_list/featuers/seasons/data/mapper/seasons_data_mapper.dart';
import '../../domain/model/seasons_model.dart';
import '../response/seasons_response.dart';
import 'package:anime_list/featuers/home/data/mapper/manga_mapper/pagination_mapper.dart';

extension SeasonsMapper on SeasonsResponse {
  SeasonsModel toDomain() {
    return SeasonsModel(
      pagination: pagination?.toDomain(),
      data: data?.map((e) => e.toDomain()).toList(),
    );
  }
}
