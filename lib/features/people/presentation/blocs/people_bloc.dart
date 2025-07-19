import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

import 'package:brival_recruitment_task/core/result.dart';
import 'package:brival_recruitment_task/features/people/data/repositories/people_repository.dart';
import 'package:brival_recruitment_task/features/people/presentation/blocs/people_event.dart';
import 'package:brival_recruitment_task/features/people/presentation/blocs/people_state.dart';

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
      failure: (error) => emit(PeopleState.loaded(Result.failure(_mapErrorToUserMessage(error)))),
    );
  }

  Future<void> _onRefreshPeople(RefreshPeople event, Emitter<PeopleState> emit) async {
    emit(const PeopleState.loading());
    final result = await _peopleRepository.getPeople();
    result.when(
      success: (response) => emit(PeopleState.loaded(Result.success(response.results))),
      failure: (error) => emit(PeopleState.loaded(Result.failure(_mapErrorToUserMessage(error)))),
    );
  }

  String _mapErrorToUserMessage(Object error) {
    print(error);
    if (error is DioException) {
      if (error.type == DioExceptionType.connectionTimeout) {
        return 'Przekroczono czas oczekiwania na połączenie.';
      } else if (error.type == DioExceptionType.receiveTimeout) {
        return 'Przekroczono czas oczekiwania na odpowiedź serwera.';
      } else if (error.type == DioExceptionType.badResponse) {
        switch (error.response?.statusCode) {
          case 400:
            return 'Błąd żądania (400)';
          case 401:
            return 'Brak autoryzacji (401)';
          case 403:
            return 'Brak dostępu (403)';
          case 404:
            return 'Nie znaleziono zasobu (404)';
          case 500:
            return 'Błąd serwera (500)';
          default:
            return 'Błąd serwera (${error.response?.statusCode})';
        }
      } else if (error.type == DioExceptionType.unknown) {
        return 'Brak połączenia z internetem lub nieznany błąd.';
      } else {
        return 'Wystąpił błąd sieci: ${error.message}';
      }
    }
    if (error is SocketException) {
      return 'Brak połączenia z internetem.';
    }
    return 'Wystąpił nieoczekiwany błąd: $error';
  }
}
