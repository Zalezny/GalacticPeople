import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:brival_recruitment_task/features/people/data/models/person_model.dart';
import 'package:brival_recruitment_task/features/people/data/models/swapi_response_model.dart';

part 'people_api_service.g.dart';

@RestApi()
abstract class PeopleApiService {
  factory PeopleApiService(Dio dio, {String baseUrl}) = _PeopleApiService;

  @GET('/people/')
  Future<SwapiResponseModel> getPeople();

  @GET('/people/{id}/')
  Future<PersonModel> getPerson(@Path('id') int id);
}
