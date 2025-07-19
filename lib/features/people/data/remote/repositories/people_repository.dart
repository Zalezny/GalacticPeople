import 'package:brival_recruitment_task/features/people/data/models/person_model.dart';
import 'package:brival_recruitment_task/features/people/data/models/swapi_response_model.dart';
import 'package:brival_recruitment_task/core/result.dart';

abstract class PeopleRepository {
  Future<Result<SwapiResponseModel>> getPeople();
  Future<Result<PersonModel>> getPerson(int id);
}
