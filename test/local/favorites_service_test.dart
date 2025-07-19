import 'package:brival_recruitment_task/features/people/data/local/services/favorites_service_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:brival_recruitment_task/features/people/data/local/services/favorites_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../test_persons.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  group('FavoritesService', () {
    late FavoritesServiceInterface favoritesService;

    setUp(() {
      SharedPreferences.setMockInitialValues({});
      favoritesService = FavoritesService();
    });

    test('should create FavoritesService instance', () {
      expect(favoritesService, isNotNull);
    });

    test('should create PersonModel for testing', () {
      final person = MockedPeople.testPersonLuke;

      expect(person.name, equals('Luke Skywalker'));
      expect(person.created, equals('2014-12-09T13:50:51.644000Z'));
    });

    test('should add person to favorites', () async {
      final person = MockedPeople.testPersonLuke;
      final result = await favoritesService.addToFavorites(person);
      final isFavorite = await favoritesService.isFavorite(person);
      expect(result, isTrue);
      expect(isFavorite, isTrue);
    });

    test('should get favorites after adding person', () async {
      final person = MockedPeople.testPersonLuke;
      await favoritesService.addToFavorites(person);
      final favorites = await favoritesService.getFavorites();
      expect(favorites, isNotEmpty);
      expect(favorites.first.name, equals('Luke Skywalker'));
    });
  });
}
