import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:brival_recruitment_task/features/people/presentation/blocs/people_bloc.dart';
import 'package:brival_recruitment_task/features/people/presentation/blocs/people_state.dart';
import 'package:brival_recruitment_task/features/people/presentation/blocs/people_event.dart';
import 'package:brival_recruitment_task/core/di/injection.dart';
import 'package:brival_recruitment_task/core/result.dart';
import 'package:brival_recruitment_task/features/people/data/models/person_model.dart';
import 'package:brival_recruitment_task/core/router/app_router.dart';
import 'package:brival_recruitment_task/shared/widgets/default_loading_widget.dart';
import 'package:brival_recruitment_task/shared/widgets/default_error_widget.dart' show DefaultErrorWidget;
import 'package:brival_recruitment_task/features/people/presentation/widgets/favorite_button.dart';

@RoutePage()
class PeoplePage extends StatelessWidget implements AutoRouteWrapper {
  const PeoplePage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (_) => getIt<PeopleBloc>()..add(const PeopleEvent.loadPeople()), child: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xFF0f172a), Color(0xFF1e293b)], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: BlocBuilder<PeopleBloc, PeopleState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox.shrink(),
              loading: () => const DefaultLoadingWidget(),
              loaded: (result) => result.when(
                success: (people) => _PeopleList(people: people),
                failure: (error) => DefaultErrorWidget(error: error.toString()),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _PeopleList extends StatelessWidget {
  final List<PersonModel> people;
  const _PeopleList({required this.people});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: const Color(0xFF0f172a).withValues(alpha: 0.95),
            elevation: 0,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.only(left: 0, bottom: 12),
              title: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '⭐ Star Wars',
                    style: TextStyle(color: Colors.yellow[400], fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Text('Characters from the galaxy', style: TextStyle(color: Colors.white70, fontSize: 12)),
                ],
              ),
              centerTitle: true,
            ),
            expandedHeight: 80,
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 8),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, idx) => _PersonCard(key: ValueKey(people[idx].url), person: people[idx]),
                childCount: people.length,
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 32)),
        ],
      ),
    );
  }
}

class _PersonCard extends StatelessWidget {
  final PersonModel person;
  const _PersonCard({super.key, required this.person});

  String getGenderIcon(String gender) {
    switch (gender.toLowerCase()) {
      case 'male':
        return '👨';
      case 'female':
        return '👩';
      case 'n/a':
      default:
        return '🤖';
    }
  }

  String formatHeight(String height) => height == 'unknown' ? 'Unknown' : '$height cm';
  String formatMass(String mass) => mass == 'unknown' ? 'Unknown' : '$mass kg';
  String formatBirthYear(String birthYear) => birthYear == 'unknown' ? 'Unknown' : birthYear;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withValues(alpha: 0.05),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Colors.blueGrey[800]!),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          final urlParts = person.url.split('/');
          final id = int.tryParse(urlParts.where((s) => s.isNotEmpty).last) ?? 1;
          context.router.push(PersonDetailsRoute(personId: id));
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(person.gender.icon(), style: const TextStyle(fontSize: 28)),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      person.name,
                      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  FavoriteButton(key: ValueKey(person.url), person: person, size: 20),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Icon(Icons.height, color: Colors.blue[300], size: 18),
                  const SizedBox(width: 4),
                  Text(formatHeight(person.height), style: const TextStyle(color: Colors.white70, fontSize: 13)),
                  const SizedBox(width: 16),
                  Icon(Icons.monitor_weight, color: Colors.green[300], size: 18),
                  const SizedBox(width: 4),
                  Text(formatMass(person.mass), style: const TextStyle(color: Colors.white70, fontSize: 13)),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.cake, color: Colors.yellow[600], size: 18),
                  const SizedBox(width: 4),
                  Text('Born: ${formatBirthYear(person.birthYear)}', style: const TextStyle(color: Colors.white70, fontSize: 13)),
                ],
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 4,
                children: [
                  if (person.hairColor != 'n/a' && person.hairColor != 'none') _Badge(label: 'Hair: ${person.hairColor}'),
                  _Badge(label: 'Eyes: ${person.eyeColor}'),
                  _Badge(label: 'Skin: ${person.skinColor}'),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _Stat(label: 'Films', value: person.films.length),
                  _Stat(label: 'Vehicles', value: person.vehicles.length),
                  _Stat(label: 'Starships', value: person.starships.length),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Badge extends StatelessWidget {
  final String label;
  const _Badge({required this.label});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(color: Colors.blueGrey[800], borderRadius: BorderRadius.circular(8)),
      child: Text(label, style: const TextStyle(color: Colors.white70, fontSize: 11)),
    );
  }
}

class _Stat extends StatelessWidget {
  final String label;
  final int value;
  const _Stat({required this.label, required this.value});
  @override
  Widget build(BuildContext context) {
    return Text('$label: $value', style: const TextStyle(color: Colors.white54, fontSize: 12));
  }
}
