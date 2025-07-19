// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../swapi_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SwapiResponseModel _$SwapiResponseModelFromJson(Map<String, dynamic> json) =>
    _SwapiResponseModel(
      results: (json['results'] as List<dynamic>)
          .map((e) => PersonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SwapiResponseModelToJson(_SwapiResponseModel instance) =>
    <String, dynamic>{
      'results': instance.results.map((e) => e.toJson()).toList(),
    };
