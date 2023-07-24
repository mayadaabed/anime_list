import '../../domain/model/anime_details_theme_model.dart';
import '../response/anime_details_theme_response.dart';

extension AnimeDetailsThemeMapper on AnimeDetailsTheme {
  AnimeDetailsThemeModel toDomain() {
    return AnimeDetailsThemeModel(
      openings: openings?.map((e) => e).toList(),
      endings: endings?.map((e) => e).toList(),
    );
  }
}
