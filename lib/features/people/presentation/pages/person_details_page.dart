import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:brival_recruitment_task/features/people/presentation/blocs/person_details_bloc.dart';
import 'package:brival_recruitment_task/features/people/presentation/blocs/person_details_state.dart';
import 'package:brival_recruitment_task/features/people/presentation/blocs/person_details_event.dart';
import 'package:brival_recruitment_task/core/di/injection.dart';
import 'package:brival_recruitment_task/core/result.dart';
import 'package:brival_recruitment_task/features/people/data/models/person_model.dart';
import 'package:brival_recruitment_task/shared/widgets/default_loading_widget.dart';
import 'package:brival_recruitment_task/shared/widgets/default_error_widget.dart';
import 'package:brival_recruitment_task/features/people/presentation/widgets/person_details/person_details_widgets.dart';

@RoutePage()
class PersonDetailsPage extends StatelessWidget {
  final int personId;

  const PersonDetailsPage({super.key, required this.personId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => getIt<PersonDetailsBloc>()..add(PersonDetailsEvent.loadPerson(personId)), child: const _PersonDetailsView());
  }
}

class _PersonDetailsView extends StatelessWidget {
  const _PersonDetailsView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xFF0f172a), Color(0xFF1e293b)], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: BlocBuilder<PersonDetailsBloc, PersonDetailsState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox.shrink(),
              loading: () => const DefaultLoadingWidget(title: 'Loading character details...', subtitle: 'Accessing galactic database...'),
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

  String getGenderIcon(String gender) {
    switch (gender.toLowerCase()) {
      case 'male':
        return '👨';
      case 'female':
        return '👩';
      case 'n/a':
      case 'none':
      default:
        return '🤖';
    }
  }

  String formatHeight(String height) => height == 'unknown' ? 'Unknown' : '$height cm';
  String formatMass(String mass) => mass == 'unknown' ? 'Unknown' : '$mass kg';
  String formatBirthYear(String birthYear) => birthYear == 'unknown' ? 'Unknown' : birthYear;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // Sticky Header
        SliverAppBar(
          pinned: true,
          backgroundColor: const Color(0xFF0f172a).withValues(alpha: 0.95),
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => context.router.pop(),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Character Profile',
                style: TextStyle(color: Colors.yellow[400], fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text('Star Wars Universe', style: TextStyle(color: Colors.white70, fontSize: 12)),
            ],
          ),
        ),

        // Content
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(height: 16),

              // Hero Card
              HeroCard(person: person),
              const SizedBox(height: 24),

              // Physical Stats Grid
              StatsGrid(person: person),
              const SizedBox(height: 16),

              // Birth Year Card
              BirthYearCard(person: person),
              const SizedBox(height: 16),

              // Physical Characteristics
              PhysicalCharacteristicsCard(person: person),
              const SizedBox(height: 16),

              // Films Section
              if (person.films.isNotEmpty) ...[FilmsCard(person: person), const SizedBox(height: 16)],

              // Starships Section
              if (person.starships.isNotEmpty) ...[StarshipsCard(person: person), const SizedBox(height: 16)],

              // Vehicles Section
              if (person.vehicles.isNotEmpty) ...[VehiclesCard(person: person), const SizedBox(height: 16)],

              const SizedBox(height: 32),
            ]),
          ),
        ),
      ],
    );
  }
}
