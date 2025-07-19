import 'package:freezed_annotation/freezed_annotation.dart';

import '../enums/gender_type.dart';

part 'generated/person_model.freezed.dart';
part 'generated/person_model.g.dart';

@freezed
abstract class PersonModel with _$PersonModel {
  const factory PersonModel({
    required String name,
    required String height,
    required String mass,
    @JsonKey(name: 'hair_color') required String hairColor,
    @JsonKey(name: 'skin_color') required String skinColor,
    @JsonKey(name: 'eye_color') required String eyeColor,
    @JsonKey(name: 'birth_year') required String birthYear,
    required GenderType gender,
    required String homeworld,
    required List<String> films,
    required List<String> species,
    required List<String> vehicles,
    required List<String> starships,
    required String created,
    required String edited,
    required String url,
  }) = _PersonModel;

  factory PersonModel.fromJson(Map<String, dynamic> json) => _$PersonModelFromJson(json);
}
