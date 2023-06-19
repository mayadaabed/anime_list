import 'package:json_annotation/json_annotation.dart';
import 'items_response.dart';
part 'pagination_response.g.dart';

@JsonSerializable()
class PaginationResponse {
  @JsonKey(name: 'last_visible_page')
  int? lastVisiblePage;
  @JsonKey(name: 'has_next_page')
  bool? hasNextPage;
  @JsonKey(name: 'current_page')
  int? currentPage;
  @JsonKey(name: 'items')
  ItemsResponse? items;

  PaginationResponse({
    this.lastVisiblePage,
    this.hasNextPage,
    this.currentPage,
    this.items,
  });

  factory PaginationResponse.fromJson(Map<String, dynamic> json) =>
      _$PaginationResponseFromJson(json);

  Map<String, dynamic> toJson(PaginationResponse instance) =>
      _$PaginationResponseToJson(this);
}
