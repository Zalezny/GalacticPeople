import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../models/person_model.dart';
import 'favorites_service_interface.dart';

@injectable
class FavoritesService implements FavoritesServiceInterface {
  static const String _favoritesKey = 'favorites';

  @override
  Future<bool> addToFavorites(PersonModel person) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final favoritesJson = prefs.getStringList(_favoritesKey) ?? [];
      if (favoritesJson.contains(person.created)) {
        return false;
      }
      favoritesJson.add(person.created);
      await prefs.setStringList(_favoritesKey, favoritesJson);
      final personDataKey = 'person_${person.created}';
      final personJson = jsonEncode(person.toJson());
      await prefs.setString(personDataKey, personJson);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> removeFromFavorites(PersonModel person) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final favoritesJson = prefs.getStringList(_favoritesKey) ?? [];
      favoritesJson.remove(person.created);
      await prefs.setStringList(_favoritesKey, favoritesJson);
      final personDataKey = 'person_${person.created}';
      await prefs.remove(personDataKey);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> isFavorite(PersonModel person) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final favoritesJson = prefs.getStringList(_favoritesKey) ?? [];
      return favoritesJson.contains(person.created);
    } catch (e) {
      return false;
    }
  }

  @override
  Future<List<PersonModel>> getFavorites() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final favoritesJson = prefs.getStringList(_favoritesKey) ?? [];
      final List<PersonModel> favorites = [];
      for (final createdId in favoritesJson) {
        final personDataKey = 'person_$createdId';
        final personJson = prefs.getString(personDataKey);
        if (personJson != null) {
          try {
            final personData = jsonDecode(personJson) as Map<String, dynamic>;
            final person = PersonModel.fromJson(personData);
            favorites.add(person);
          } catch (e) {
            favoritesJson.remove(createdId);
            await prefs.remove(personDataKey);
          }
        }
      }
      if (favorites.length != favoritesJson.length) {
        await prefs.setStringList(_favoritesKey, favorites.map((p) => p.created).toList());
      }
      return favorites;
    } catch (e) {
      return [];
    }
  }
}
