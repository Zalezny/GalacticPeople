// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:brival_recruitment_task/core/di/api_module.dart' as _i21;
import 'package:brival_recruitment_task/core/network/api_client.dart' as _i906;
import 'package:brival_recruitment_task/features/people/data/repositories/people_repository.dart'
    as _i281;
import 'package:brival_recruitment_task/features/people/data/repositories/people_repository_impl.dart'
    as _i108;
import 'package:brival_recruitment_task/features/people/data/services/people_api_service.dart'
    as _i401;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final apiModule = _$ApiModule();
    gh.factory<_i401.PeopleApiService>(() => apiModule.peopleApiService);
    gh.factory<_i906.ApiClient>(() => _i906.ApiClient());
    gh.factory<_i281.PeopleRepository>(
      () => _i108.PeopleRepositoryImpl(gh<_i401.PeopleApiService>()),
    );
    return this;
  }
}

class _$ApiModule extends _i21.ApiModule {}
