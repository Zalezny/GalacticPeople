import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:brival_recruitment_task/core/result.dart';
import 'package:brival_recruitment_task/features/people/data/models/person_model.dart';

part 'generated/person_details_state.freezed.dart';

@freezed
class PersonDetailsState with _$PersonDetailsState {
  const factory PersonDetailsState.initial() = _Initial;
  const factory PersonDetailsState.loading() = _Loading;
  const factory PersonDetailsState.loaded(Result<PersonModel> result) = _Loaded;
}
