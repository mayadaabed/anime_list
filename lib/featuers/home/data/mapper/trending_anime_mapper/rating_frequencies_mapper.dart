import 'package:anime_list/core/extentions/extentions.dart';
import 'package:anime_list/featuers/home/data/response/rating_frequencies_response.dart';
import 'package:anime_list/featuers/home/domain/model/rating_frequencies_model.dart';

extension RatingFrequenciesMapper on RatingFrequenciesResponse {
  RatingFrequenciesModel toDomain() {
    return RatingFrequenciesModel(
      s2: s2.onNull(),
      s3: s3.onNull(),
      s4: s4.onNull(),
      s5: s5.onNull(),
      s6: s6.onNull(),
      s7: s7.onNull(),
      s8: s8.onNull(),
      s9: s9.onNull(),
      s10: s10.onNull(),
      s11: s11.onNull(),
      s12: s12.onNull(),
      s13: s13.onNull(),
      s14: s14.onNull(),
      s15: s15.onNull(),
      s16: s16.onNull(),
      s17: s17.onNull(),
      s18: s18.onNull(),
      s19: s19.onNull(),
      s20: s20.onNull(),
    );
  }
}
