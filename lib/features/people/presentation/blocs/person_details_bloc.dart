import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:brival_recruitment_task/core/result.dart';
import 'package:brival_recruitment_task/features/people/data/repositories/people_repository.dart';
import 'package:brival_recruitment_task/features/people/presentation/blocs/person_details_event.dart';
import 'package:brival_recruitment_task/features/people/presentation/blocs/person_details_state.dart';
import 'package:brival_recruitment_task/utils/error_messages.dart';

@injectable
class PersonDetailsBloc extends Bloc<PersonDetailsEvent, PersonDetailsState> {
  final PeopleRepository _peopleRepository;

  PersonDetailsBloc(this._peopleRepository) : super(const PersonDetailsState.initial()) {
    on<LoadPerson>(_onLoadPerson);
    on<RefreshPerson>(_onRefreshPerson);
  }

  Future<void> _onLoadPerson(LoadPerson event, Emitter<PersonDetailsState> emit) async {
    emit(const PersonDetailsState.loading());
    final result = await _peopleRepository.getPerson(event.id);
    result.when(
      success: (person) => emit(PersonDetailsState.loaded(Result.success(person))),
      failure: (error) => emit(PersonDetailsState.loaded(Result.failure(ErrorMessages.mapErrorToUserMessage(error)))),
    );
  }

  Future<void> _onRefreshPerson(RefreshPerson event, Emitter<PersonDetailsState> emit) async {
    emit(const PersonDetailsState.loading());
    final result = await _peopleRepository.getPerson(event.id);
    result.when(
      success: (person) => emit(PersonDetailsState.loaded(Result.success(person))),
      failure: (error) => emit(PersonDetailsState.loaded(Result.failure(ErrorMessages.mapErrorToUserMessage(error)))),
    );
  }
}
