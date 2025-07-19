import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:brival_recruitment_task/core/router/app_router.dart';
import 'package:brival_recruitment_task/core/di/injection.dart';
import 'package:brival_recruitment_task/features/people/presentation/blocs/favorites_bloc.dart';
import 'package:brival_recruitment_task/features/people/presentation/blocs/favorites_event.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<FavoritesBloc>()..add(const FavoritesEvent.loadFavorites()),
      child: MaterialApp.router(
        theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), useMaterial3: true),
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
