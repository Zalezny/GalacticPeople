import 'package:injectable/injectable.dart';
import 'package:brival_recruitment_task/core/result.dart';

import 'package:brival_recruitment_task/features/people/data/models/person_model.dart';
import 'package:brival_recruitment_task/features/people/data/models/swapi_response_model.dart';
import 'package:brival_recruitment_task/features/people/data/remote/repositories/people_repository.dart';
import 'package:brival_recruitment_task/features/people/data/remote/services/people_api_service.dart';

@Injectable(as: PeopleRepository)
class PeopleRepositoryImpl implements PeopleRepository {
  final PeopleApiService _apiService;

  PeopleRepositoryImpl(this._apiService);

  @override
  Future<Result<SwapiResponseModel>> getPeople() async {
    try {
      final raw = await _apiService.getPeopleRaw();
      if (raw is List) {
        final map = {'results': raw};
        final model = SwapiResponseModel.fromJson(map);
        return Result.success(model);
      } else if (raw is Map<String, dynamic>) {
        final model = SwapiResponseModel.fromJson(raw);
        return Result.success(model);
      } else {
        return Result.failure(Exception('Non recognized  issue'));
      }
    } catch (e) {
      return Result.failure(e);
    }
  }

  @override
  Future<Result<PersonModel>> getPerson(int id) async {
    try {
      final response = await _apiService.getPerson(id);
      return Result.success(response);
    } catch (e) {
      return Result.failure(e);
    }
  }
}
