import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:brival_recruitment_task/features/people/data/models/person_model.dart';

part 'generated/favorites_event.freezed.dart';

@freezed
abstract class FavoritesEvent with _$FavoritesEvent {
  const factory FavoritesEvent.addToFavorites(PersonModel person) = AddToFavorites;
  const factory FavoritesEvent.removeFromFavorites(PersonModel person) = RemoveFromFavorites;
  const factory FavoritesEvent.checkIfFavorite(PersonModel person) = CheckIfFavorite;
  const factory FavoritesEvent.loadFavorites() = LoadFavorites;
  const factory FavoritesEvent.toggleFavorite(PersonModel person) = ToggleFavorite;
}
