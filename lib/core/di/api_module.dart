import 'package:injectable/injectable.dart';

import 'package:brival_recruitment_task/core/di/injection.dart';
import 'package:brival_recruitment_task/core/network/api_client.dart';
import 'package:brival_recruitment_task/features/people/data/remote/services/people_api_service.dart';

@module
abstract class ApiModule {
  @injectable
  PeopleApiService get peopleApiService => PeopleApiService(getIt<ApiClient>().dio);
}
