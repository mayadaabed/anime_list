import 'package:json_annotation/json_annotation.dart';
part 'manga_titles_response.g.dart';

@JsonSerializable()
class MangaTitlesReponse {
  @JsonKey(name: 'type')
  String? type;
  @JsonKey(name: 'title')
  String? title;

  MangaTitlesReponse({
    this.type,
    this.title,
  });

  factory MangaTitlesReponse.fromJson(Map<String, dynamic> json) =>
      _$MangaTitlesReponseFromJson(json);

  Map<String, dynamic> toJson(MangaTitlesReponse instance) =>
      _$MangaTitlesReponseToJson(this);
}
