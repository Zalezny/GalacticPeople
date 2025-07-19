import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:brival_recruitment_task/features/people/data/models/person_model.dart';

part 'generated/favorites_state.freezed.dart';

@freezed
abstract class FavoritesState with _$FavoritesState {
  const factory FavoritesState({
    @Default([]) List<PersonModel> favorites,
    @Default({}) Map<String, bool> favoriteStatus,
    @Default(false) bool isLoading,
    String? error,
  }) = _FavoritesState;
}
