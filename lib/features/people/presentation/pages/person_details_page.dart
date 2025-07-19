import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:brival_recruitment_task/features/people/presentation/blocs/person_details/person_details_bloc.dart';
import 'package:brival_recruitment_task/features/people/presentation/blocs/person_details/person_details_state.dart';
import 'package:brival_recruitment_task/features/people/presentation/blocs/person_details/person_details_event.dart';
import 'package:brival_recruitment_task/core/di/injection.dart';
import 'package:brival_recruitment_task/core/result.dart';
import 'package:brival_recruitment_task/features/people/data/models/person_model.dart';
import 'package:brival_recruitment_task/shared/widgets/default_loading_widget.dart';
import 'package:brival_recruitment_task/shared/widgets/default_error_widget.dart';
import 'package:brival_recruitment_task/features/people/presentation/widgets/person_details/person_details_widgets.dart';
import 'package:brival_recruitment_task/features/people/presentation/widgets/favorite_button.dart';

@RoutePage()
class PersonDetailsPage extends StatelessWidget implements AutoRouteWrapper {
  final int personId;

  const PersonDetailsPage({super.key, required this.personId});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<PersonDetailsBloc>()..add(PersonDetailsEvent.loadPerson(personId)),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0f172a), Color(0xFF1e293b)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: BlocBuilder<PersonDetailsBloc, PersonDetailsState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox.shrink(),
              loading: () => const DefaultLoadingWidget(
                title: 'Loading character details...',
                subtitle: 'Accessing galactic database...',
              ),
              loaded: (result) => result.when(
                success: (person) => _PersonDetailsContent(person: person),
                failure: (error) => DefaultErrorWidget(error: error.toString()),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _PersonDetailsContent extends StatelessWidget {
  final PersonModel person;
  const _PersonDetailsContent({required this.person});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          backgroundColor: const Color(0xFF0f172a).withValues(alpha: 0.95),
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => context.router.pop(),
          ),
          actions: [FavoriteButton(person: person, size: 28, color: Colors.red)],
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Character Profile',
                style: TextStyle(
                  color: Colors.yellow[400],
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text('Star Wars Universe', style: TextStyle(color: Colors.white70, fontSize: 12)),
            ],
          ),
        ),

        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(height: 16),
              HeroCard(person: person),
              const SizedBox(height: 24),
              PersonBasicInfoTable(person: person),
              const SizedBox(height: 16),
              StatsGrid(person: person),
              const SizedBox(height: 16),
              if (person.films.isNotEmpty) ...[
                ListCard(
                  title: 'Films',
                  icon: Icons.movie,
                  iconColor: Colors.purple[400]!,
                  items: person.films,
                  itemLabelBuilder: (i, _) => 'Film  ${i + 1}',
                ),
                const SizedBox(height: 16),
              ],
              if (person.starships.isNotEmpty) ...[
                ListCard(
                  title: 'Starships',
                  icon: Icons.rocket,
                  iconColor: Colors.red[400]!,
                  items: person.starships,
                  itemLabelBuilder: (i, _) => 'Starship  0${i + 1}',
                  itemTagBuilder: (i, _) => 'Starfighter',
                ),
                const SizedBox(height: 16),
              ],
              if (person.vehicles.isNotEmpty) ...[
                ListCard(
                  title: 'Vehicles',
                  icon: Icons.directions_car,
                  iconColor: Colors.orange[400]!,
                  items: person.vehicles,
                  itemLabelBuilder: (i, _) => 'Vehicle  0${i + 1}',
                ),
                const SizedBox(height: 16),
              ],
              const SizedBox(height: 32),
            ]),
          ),
        ),
      ],
    );
  }
}
