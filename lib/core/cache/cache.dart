class CacheData {
  static int animeId = -1;
  static String trendingAnimeId = '';
  static String youtubeVideoId = '';

  String mangaTitle = '';
  String mangaDescription = '';
  String mangaImage = '';
  String mangaChapters = '';
  String mangaDate = '';
  String mangaRate = '';

  void setmangaTitle(String value) {
    mangaTitle = value;
  }

  String getmangaTitle() {
    return mangaTitle;
  }

  void setmangaDescription(String value) {
    mangaDescription = value;
  }

  String getmangaDescription() {
    return mangaDescription;
  }

  void setmangaImage(String value) {
    mangaImage = value;
  }

  String getmangaImage() {
    return mangaImage;
  }

  void setmangaChapters(String value) {
    mangaChapters = value;
  }

  String getmangaChapters() {
    return mangaChapters;
  }

  void setmangaDate(String value) {
    mangaDate = value;
  }

  String getmangaDate() {
    return mangaDate;
  }

  void setmangaRate(String value) {
    mangaRate = value;
  }

  String getmangaRate() {
    return mangaRate;
  }

  void setanimeId(int value) {
    animeId = value;
  }

  int getanimeId() {
    return animeId;
  }

  void setTrendingAnimeId(String value) {
    trendingAnimeId = value;
  }

  String getTrendingAnimeId() {
    return trendingAnimeId;
  }

  void setYoutybeViedoId(String value) {
    youtubeVideoId = value;
  }

  String getYoutybeViedoId() {
    return youtubeVideoId;
  }
}
