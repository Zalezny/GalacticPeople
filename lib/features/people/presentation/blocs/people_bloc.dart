import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:brival_recruitment_task/core/result.dart';
import 'package:brival_recruitment_task/features/people/data/remote/repositories/people_repository.dart';
import 'package:brival_recruitment_task/features/people/presentation/blocs/people_event.dart';
import 'package:brival_recruitment_task/features/people/presentation/blocs/people_state.dart';
import 'package:brival_recruitment_task/utils/error_messages.dart';

@injectable
class PeopleBloc extends Bloc<PeopleEvent, PeopleState> {
  final PeopleRepository _peopleRepository;

  PeopleBloc(this._peopleRepository) : super(const PeopleState.initial()) {
    on<LoadPeople>(_onLoadPeople);
    on<RefreshPeople>(_onRefreshPeople);
  }

  Future<void> _onLoadPeople(LoadPeople event, Emitter<PeopleState> emit) async {
    emit(const PeopleState.loading());
    final result = await _peopleRepository.getPeople();
    result.when(
      success: (response) => emit(PeopleState.loaded(Result.success(response.results))),
      failure: (error) => emit(PeopleState.loaded(Result.failure(ErrorMessages.mapErrorToUserMessage(error)))),
    );
  }

  Future<void> _onRefreshPeople(RefreshPeople event, Emitter<PeopleState> emit) async {
    emit(const PeopleState.loading());
    final result = await _peopleRepository.getPeople();
    result.when(
      success: (response) => emit(PeopleState.loaded(Result.success(response.results))),
      failure: (error) => emit(PeopleState.loaded(Result.failure(ErrorMessages.mapErrorToUserMessage(error)))),
    );
  }
}
