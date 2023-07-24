import 'package:json_annotation/json_annotation.dart';
import '../../../home/data/response/manga_response/authors_response.dart';
part 'relations_response.g.dart';

@JsonSerializable()
class RelationsResponse {
  @JsonKey(name: 'relation')
  String? relation;
  @JsonKey(name: 'entry')
  List<AuthorsResposne>? entry;

  RelationsResponse({
    this.relation,
    this.entry,
  });

  factory RelationsResponse.fromJson(Map<String, dynamic> json) =>
      _$RelationsResponseFromJson(json);

  Map<String, dynamic> toJson(RelationsResponse instance) =>
      _$RelationsResponseToJson(instance);
}
