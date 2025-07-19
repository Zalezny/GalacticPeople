import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/people_event.freezed.dart';

@freezed
class PeopleEvent with _$PeopleEvent {
  const factory PeopleEvent.loadPeople() = LoadPeople;
  const factory PeopleEvent.refreshPeople() = RefreshPeople;
}
