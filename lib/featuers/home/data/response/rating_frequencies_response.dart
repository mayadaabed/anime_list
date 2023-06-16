import 'package:json_annotation/json_annotation.dart';
part 'rating_frequencies_response.g.dart';

@JsonSerializable()
class RatingFrequenciesResponse {
  @JsonKey(name: 's2')
  String? s2;
  @JsonKey(name: 's3')
  String? s3;
  @JsonKey(name: 's4')
  String? s4;
  @JsonKey(name: 's5')
  String? s5;
  @JsonKey(name: 's6')
  String? s6;
  @JsonKey(name: 's7')
  String? s7;
  @JsonKey(name: 's8')
  String? s8;
  @JsonKey(name: 's9')
  String? s9;
  @JsonKey(name: 's10')
  String? s10;
  @JsonKey(name: 's11')
  String? s11;
  @JsonKey(name: 's12')
  String? s12;
  @JsonKey(name: 's13')
  String? s13;
  @JsonKey(name: 's14')
  String? s14;
  @JsonKey(name: 's15')
  String? s15;
  @JsonKey(name: 's16')
  String? s16;
  @JsonKey(name: 's17')
  String? s17;
  @JsonKey(name: 's18')
  String? s18;
  @JsonKey(name: 's19')
  String? s19;
  @JsonKey(name: 's20')
  String? s20;

  RatingFrequenciesResponse({
    this.s2,
    this.s3,
    this.s4,
    this.s5,
    this.s6,
    this.s7,
    this.s8,
    this.s9,
    this.s10,
    this.s11,
    this.s12,
    this.s13,
    this.s14,
    this.s15,
    this.s16,
    this.s17,
    this.s18,
    this.s19,
    this.s20,
  });

  factory RatingFrequenciesResponse.fromJson(Map<String, dynamic> json) =>
      _$RatingFrequenciesResponseFromJson(json);

  Map<String, dynamic> toJson(RatingFrequenciesResponse instance) =>
      _$RatingFrequenciesResponseToJson(this);
}
