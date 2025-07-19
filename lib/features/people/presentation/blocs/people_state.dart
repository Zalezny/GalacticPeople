import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:brival_recruitment_task/core/result.dart';
import 'package:brival_recruitment_task/features/people/data/models/person_model.dart';

part 'generated/people_state.freezed.dart';

@freezed
class PeopleState with _$PeopleState {
  const factory PeopleState.initial() = PeopleInitial;
  const factory PeopleState.loading() = PeopleLoading;
  const factory PeopleState.loaded(Result<List<PersonModel>> result) = PeopleLoaded;
}
