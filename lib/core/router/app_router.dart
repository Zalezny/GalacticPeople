import 'package:auto_route/auto_route.dart';
import 'package:brival_recruitment_task/pages/home_page.dart';

import '../../features/people/presentation/pages/people_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [AutoRoute(page: PeopleRoute.page, initial: true)];
}
