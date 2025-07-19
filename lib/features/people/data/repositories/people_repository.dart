import 'package:brival_recruitment_task/features/people/data/models/person_model.dart';
import 'package:brival_recruitment_task/features/people/data/models/swapi_response_model.dart';

abstract class PeopleRepository {
  Future<SwapiResponseModel> getPeople();
  Future<PersonModel> getPerson(int id);
}
