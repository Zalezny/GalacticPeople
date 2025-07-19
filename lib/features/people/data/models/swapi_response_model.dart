import 'package:freezed_annotation/freezed_annotation.dart';

import 'person_model.dart';

part 'generated/swapi_response_model.freezed.dart';
part 'generated/swapi_response_model.g.dart';

@freezed
abstract class SwapiResponseModel with _$SwapiResponseModel {
  const factory SwapiResponseModel({required List<PersonModel> results}) = _SwapiResponseModel;

  factory SwapiResponseModel.fromJson(Map<String, dynamic> json) => _$SwapiResponseModelFromJson(json);
}
