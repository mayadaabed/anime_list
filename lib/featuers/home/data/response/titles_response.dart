import 'package:json_annotation/json_annotation.dart';
part 'titles_response.g.dart';

@JsonSerializable()
class TitlesResponse {
  @JsonKey(name: 'en')
  String? en;
  @JsonKey(name: 'en_jp')
  String? enJp;
  @JsonKey(name: 'ja_jp')
  String? jaJp;

  TitlesResponse({
    this.en,
    this.enJp,
    this.jaJp,
  });

  factory TitlesResponse.fromJson(Map<String, dynamic> json) =>
      _$TitlesResponseFromJson(json);

  Map<String, dynamic> toJson(TitlesResponse instance) =>
      _$TitlesResponseToJson(this);
}
