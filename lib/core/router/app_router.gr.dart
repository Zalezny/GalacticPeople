// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [PeoplePage]
class PeopleRoute extends PageRouteInfo<void> {
  const PeopleRoute({List<PageRouteInfo>? children})
    : super(PeopleRoute.name, initialChildren: children);

  static const String name = 'PeopleRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const PeoplePage());
    },
  );
}

/// generated route for
/// [PersonDetailsPage]
class PersonDetailsRoute extends PageRouteInfo<PersonDetailsRouteArgs> {
  PersonDetailsRoute({
    Key? key,
    required int personId,
    List<PageRouteInfo>? children,
  }) : super(
         PersonDetailsRoute.name,
         args: PersonDetailsRouteArgs(key: key, personId: personId),
         initialChildren: children,
       );

  static const String name = 'PersonDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PersonDetailsRouteArgs>();
      return WrappedRoute(
        child: PersonDetailsPage(key: args.key, personId: args.personId),
      );
    },
  );
}

class PersonDetailsRouteArgs {
  const PersonDetailsRouteArgs({this.key, required this.personId});

  final Key? key;

  final int personId;

  @override
  String toString() {
    return 'PersonDetailsRouteArgs{key: $key, personId: $personId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PersonDetailsRouteArgs) return false;
    return key == other.key && personId == other.personId;
  }

  @override
  int get hashCode => key.hashCode ^ personId.hashCode;
}
