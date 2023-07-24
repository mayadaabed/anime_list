import 'package:json_annotation/json_annotation.dart';
part 'anime_details_theme_response.g.dart';

@JsonSerializable()
class AnimeDetailsTheme {
  @JsonKey(name: 'openings')
  List<String>? openings;
  @JsonKey(name: 'endings')
  List<String>? endings;

  AnimeDetailsTheme({
    this.openings,
    this.endings,
  });

  factory AnimeDetailsTheme.fromJson(Map<String, dynamic> json) =>
      _$AnimeDetailsThemeFromJson(json);

  Map<String, dynamic> toJson(AnimeDetailsTheme instance) =>
      _$AnimeDetailsThemeToJson(instance);
}
