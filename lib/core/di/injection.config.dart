// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:brival_recruitment_task/core/di/api_module.dart' as _i21;
import 'package:brival_recruitment_task/core/di/favorites_module.dart' as _i438;
import 'package:brival_recruitment_task/core/network/api_client.dart' as _i906;
import 'package:brival_recruitment_task/features/people/data/local/services/favorites_service.dart'
    as _i730;
import 'package:brival_recruitment_task/features/people/data/local/services/favorites_service_interface.dart'
    as _i614;
import 'package:brival_recruitment_task/features/people/data/remote/repositories/people_repository.dart'
    as _i557;
import 'package:brival_recruitment_task/features/people/data/remote/repositories/people_repository_impl.dart'
    as _i787;
import 'package:brival_recruitment_task/features/people/data/remote/services/people_api_service.dart'
    as _i347;
import 'package:brival_recruitment_task/features/people/presentation/blocs/favorites_bloc.dart'
    as _i513;
import 'package:brival_recruitment_task/features/people/presentation/blocs/people_bloc.dart'
    as _i190;
import 'package:brival_recruitment_task/features/people/presentation/blocs/person_details_bloc.dart'
    as _i333;
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
    final favoritesModule = _$FavoritesModule();
    gh.factory<_i347.PeopleApiService>(() => apiModule.peopleApiService);
    gh.factory<_i906.ApiClient>(() => _i906.ApiClient());
    gh.factory<_i730.FavoritesService>(() => _i730.FavoritesService());
    gh.lazySingleton<_i614.FavoritesServiceInterface>(
      () => favoritesModule.favoritesService,
    );
    gh.factory<_i513.FavoritesBloc>(
      () => _i513.FavoritesBloc(gh<_i614.FavoritesServiceInterface>()),
    );
    gh.factory<_i557.PeopleRepository>(
      () => _i787.PeopleRepositoryImpl(gh<_i347.PeopleApiService>()),
    );
    gh.factory<_i190.PeopleBloc>(
      () => _i190.PeopleBloc(gh<_i557.PeopleRepository>()),
    );
    gh.factory<_i333.PersonDetailsBloc>(
      () => _i333.PersonDetailsBloc(gh<_i557.PeopleRepository>()),
    );
    return this;
  }
}

class _$ApiModule extends _i21.ApiModule {}

class _$FavoritesModule extends _i438.FavoritesModule {}
