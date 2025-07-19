import 'package:injectable/injectable.dart';
import '../../features/people/data/local/services/favorites_service.dart';
import '../../features/people/data/local/services/favorites_service_interface.dart';

@module
abstract class FavoritesModule {
  @lazySingleton
  FavoritesServiceInterface get favoritesService => FavoritesService();
}
