import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:brival_recruitment_task/features/people/data/remote/repositories/people_repository.dart';
import 'package:brival_recruitment_task/features/people/data/remote/repositories/people_repository_impl.dart';
import 'package:brival_recruitment_task/features/people/data/remote/services/people_api_service.dart';
import 'package:brival_recruitment_task/features/people/data/models/person_model.dart';
import 'package:brival_recruitment_task/features/people/data/models/swapi_response_model.dart';
import 'package:brival_recruitment_task/core/result.dart';
import 'package:mockito/annotations.dart';
import '../test_persons.dart';
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
    final peopleList = [MockedPeople.testPersonLuke];
    when(
      mockApi.getPeopleRaw(),
    ).thenAnswer((_) => Future.value({'results': peopleList.map((e) => e.toJson()).toList()}));
    final result = await repository.getPeople();
    expect(result, isA<Success<SwapiResponseModel>>());
    result.when(
      success: (data) => expect(data.results, peopleList),
      failure: (_) => fail('Should be success'),
    );
    verify(mockApi.getPeopleRaw()).called(1);
  });

  test('getPerson returns Result.success with PersonModel from API', () async {
    final person = MockedPeople.testPersonLeia;
    when(mockApi.getPerson(5)).thenAnswer((_) async => person);
    final result = await repository.getPerson(5);
    expect(result, isA<Success<PersonModel>>());
    result.when(success: (data) => expect(data, person), failure: (_) => fail('Should be success'));
    verify(mockApi.getPerson(5)).called(1);
  });
}
