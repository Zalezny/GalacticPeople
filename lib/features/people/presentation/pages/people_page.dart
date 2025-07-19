import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';

import 'package:brival_recruitment_task/core/di/injection.dart';
import 'package:brival_recruitment_task/core/result.dart';
import 'package:brival_recruitment_task/features/people/data/models/person_model.dart';
import 'package:brival_recruitment_task/features/people/presentation/blocs/people_bloc.dart';
import 'package:brival_recruitment_task/features/people/presentation/blocs/people_event.dart';
import 'package:brival_recruitment_task/features/people/presentation/blocs/people_state.dart';
import 'package:brival_recruitment_task/features/people/presentation/widgets/person_card.dart';

@RoutePage()
class PeoplePage extends StatelessWidget implements AutoRouteWrapper {
  const PeoplePage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => getIt<PeopleBloc>()..add(const PeopleEvent.loadPeople()), child: this);
  }

  @override
  Widget build(BuildContext context) {
    return const PeopleView();
  }
}

class PeopleView extends StatelessWidget {
  const PeopleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Star Wars Characters'), backgroundColor: Theme.of(context).colorScheme.inversePrimary),
      body: BlocBuilder<PeopleBloc, PeopleState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (result) =>
                result.when(success: (people) => _buildPeopleList(context, people), failure: (message) => _buildErrorWidget(context, message)),
          );
        },
      ),
    );
  }

  Widget _buildPeopleList(BuildContext context, List<PersonModel> people) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<PeopleBloc>().add(const PeopleEvent.refreshPeople());
      },
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: people.length,
        itemBuilder: (context, index) {
          final person = people[index];
          return PersonCard(
            person: person,
            onTap: () {
              // TODO: Navigate to person details
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Selected: ${person.name}')));
            },
          );
        },
      ),
    );
  }

  Widget _buildErrorWidget(BuildContext context, Object error) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, size: 64, color: Colors.red[300]),
          const SizedBox(height: 16),
          Text('Error', style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.red[700])),
          const SizedBox(height: 8),
          Text(error.toString(), style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              context.read<PeopleBloc>().add(const PeopleEvent.refreshPeople());
            },
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}
