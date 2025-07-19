import '../../models/person_model.dart';

abstract class FavoritesServiceInterface {
  Future<bool> addToFavorites(PersonModel person);

  Future<bool> removeFromFavorites(PersonModel person);

  Future<bool> isFavorite(PersonModel person);

  Future<List<PersonModel>> getFavorites();
}
