import 'package:brival_recruitment_task/features/people/data/local/services/favorites_service_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:brival_recruitment_task/features/people/data/local/services/favorites_service.dart';
import 'package:brival_recruitment_task/features/people/data/models/person_model.dart';
import 'package:brival_recruitment_task/features/people/data/enums/gender_type.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  group('FavoritesService', () {
    late FavoritesServiceInterface favoritesService;

    setUp(() {
      favoritesService = FavoritesService();
    });

    test('should create FavoritesService instance', () {
      expect(favoritesService, isNotNull);
    });

    test('should have correct interface methods', () {
      expect(favoritesService.addToFavorites, isA<Function>());
      expect(favoritesService.removeFromFavorites, isA<Function>());
      expect(favoritesService.isFavorite, isA<Function>());
      expect(favoritesService.getFavorites, isA<Function>());
    });

    test('should create PersonModel for testing', () {
      final person = PersonModel(
        name: 'Luke Skywalker',
        height: '172',
        mass: '77',
        hairColor: 'blond',
        skinColor: 'fair',
        eyeColor: 'blue',
        birthYear: '19BBY',
        gender: GenderType.male,
        homeworld: 'https://swapi.dev/api/planets/1/',
        films: ['https://swapi.dev/api/films/1/'],
        species: [],
        vehicles: ['https://swapi.dev/api/vehicles/14/'],
        starships: ['https://swapi.dev/api/starships/12/'],
        created: '2014-12-09T13:50:51.644000Z',
        edited: '2014-12-20T21:17:56.891000Z',
        url: 'https://swapi.dev/api/people/1/',
      );

      expect(person.name, equals('Luke Skywalker'));
      expect(person.created, equals('2014-12-09T13:50:51.644000Z'));
    });
  });
}
