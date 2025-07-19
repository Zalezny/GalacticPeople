import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/person_details_event.freezed.dart';

@freezed
abstract class PersonDetailsEvent with _$PersonDetailsEvent {
  const factory PersonDetailsEvent.loadPerson(int id) = LoadPerson;
  const factory PersonDetailsEvent.refreshPerson(int id) = RefreshPerson;
}
