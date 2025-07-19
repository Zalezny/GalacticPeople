import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:brival_recruitment_task/features/people/data/remote/repositories/people_repository.dart';
import 'package:brival_recruitment_task/features/people/data/remote/repositories/people_repository_impl.dart';
import 'package:brival_recruitment_task/features/people/data/remote/services/people_api_service.dart';
import 'package:brival_recruitment_task/features/people/data/models/person_model.dart';
import 'package:brival_recruitment_task/features/people/data/models/swapi_response_model.dart';
import 'package:brival_recruitment_task/features/people/data/enums/gender_type.dart';
import 'package:brival_recruitment_task/core/result.dart';
import 'package:mockito/annotations.dart';
import 'people_repository_test.mocks.dart';

@GenerateMocks([PeopleApiService])
void main() {
  late PeopleRepository repository;
  late MockPeopleApiService mockApi;

  setUp(() {
    mockApi = MockPeopleApiService();
    when(mockApi.getPeopleRaw()).thenAnswer((_) async => {'results': []});
    repository = PeopleRepositoryImpl(mockApi);
  });

  test('getPeople returns Result.success with SwapiResponseModel from API', () async {
    final peopleList = [
      PersonModel(
        name: 'Luke Skywalker',
        height: '172',
        mass: '77',
        hairColor: 'blond',
        skinColor: 'fair',
        eyeColor: 'blue',
        birthYear: '19BBY',
        gender: GenderType.male,
        homeworld: 'https://swapi.dev/api/planets/1/',
        films: [],
        species: [],
        vehicles: [],
        starships: [],
        created: '2014-12-09T13:50:51.644000Z',
        edited: '2014-12-20T21:17:56.891000Z',
        url: 'https://swapi.dev/api/people/1/',
      ),
    ];
    when(mockApi.getPeopleRaw()).thenAnswer((_) => Future.value({'results': peopleList.map((e) => e.toJson()).toList()}));
    final result = await repository.getPeople();
    expect(result, isA<Success<SwapiResponseModel>>());
    result.when(success: (data) => expect(data.results, peopleList), failure: (_) => fail('Should be success'));
    verify(mockApi.getPeopleRaw()).called(1);
  });

  test('getPerson returns Result.success with PersonModel from API', () async {
    final person = PersonModel(
      name: 'Leia Organa',
      height: '150',
      mass: '49',
      hairColor: 'brown',
      skinColor: 'light',
      eyeColor: 'brown',
      birthYear: '19BBY',
      gender: GenderType.female,
      homeworld: 'https://swapi.dev/api/planets/2/',
      films: [],
      species: [],
      vehicles: [],
      starships: [],
      created: '2014-12-10T16:20:44.310000Z',
      edited: '2014-12-20T21:17:50.311000Z',
      url: 'https://swapi.dev/api/people/5/',
    );
    when(mockApi.getPerson(5)).thenAnswer((_) async => person);
    final result = await repository.getPerson(5);
    expect(result, isA<Success<PersonModel>>());
    result.when(success: (data) => expect(data, person), failure: (_) => fail('Should be success'));
    verify(mockApi.getPerson(5)).called(1);
  });
}
