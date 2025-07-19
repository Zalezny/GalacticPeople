import 'package:brival_recruitment_task/features/people/data/models/person_model.dart';
import 'package:brival_recruitment_task/features/people/data/enums/gender_type.dart';

class MockedPeople {
  static final testPersonLuke = PersonModel(
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

static final testPersonLeia = PersonModel(
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
}
