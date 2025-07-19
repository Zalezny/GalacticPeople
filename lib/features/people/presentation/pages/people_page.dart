import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:brival_recruitment_task/features/people/presentation/blocs/people_list/people_bloc.dart';
import 'package:brival_recruitment_task/features/people/presentation/blocs/people_list/people_state.dart';
import 'package:brival_recruitment_task/features/people/presentation/blocs/people_list/people_event.dart';
import 'package:brival_recruitment_task/core/di/injection.dart';
import 'package:brival_recruitment_task/core/result.dart';
import 'package:brival_recruitment_task/shared/widgets/default_loading_widget.dart';
import 'package:brival_recruitment_task/shared/widgets/default_error_widget.dart';
import 'package:brival_recruitment_task/features/people/presentation/widgets/people_list.dart';

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
                success: (people) => PeopleList(people: people),
                failure: (error) => DefaultErrorWidget(error: error.toString()),
              ),
            );
          },
        ),
      ),
    );
  }
}
