import 'package:injectable/injectable.dart';

import 'package:brival_recruitment_task/features/people/data/models/person_model.dart';
import 'package:brival_recruitment_task/features/people/data/models/swapi_response_model.dart';
import 'package:brival_recruitment_task/features/people/data/repositories/people_repository.dart';
import 'package:brival_recruitment_task/features/people/data/services/people_api_service.dart';

@Injectable(as: PeopleRepository)
class PeopleRepositoryImpl implements PeopleRepository {
  final PeopleApiService _apiService;

  PeopleRepositoryImpl(this._apiService);

  @override
  Future<SwapiResponseModel> getPeople() async {
    try {
      return await _apiService.getPeople();
    } catch (e) {
      throw Exception('Failed to fetch people: $e');
    }
  }

  @override
  Future<PersonModel> getPerson(int id) async {
    try {
      return await _apiService.getPerson(id);
    } catch (e) {
      throw Exception('Failed to fetch person: $e');
    }
  }
}
