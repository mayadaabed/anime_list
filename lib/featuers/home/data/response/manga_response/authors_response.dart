import 'package:json_annotation/json_annotation.dart';
part 'authors_response.g.dart';

@JsonSerializable()
class AuthorsResposne {
  @JsonKey(name: 'mal_id')
  int? malId;
  @JsonKey(name: 'type')
  String? type;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'url')
  String? url;

  AuthorsResposne({
    this.malId,
    this.type,
    this.name,
    this.url,
  });

  factory AuthorsResposne.fromJson(Map<String, dynamic> json) =>
      _$AuthorsResposneFromJson(json);

  Map<String, dynamic> toJson(AuthorsResposne instance) =>
      _$AuthorsResposneToJson(this);
}
