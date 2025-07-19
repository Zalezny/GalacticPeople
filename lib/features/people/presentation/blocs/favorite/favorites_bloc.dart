import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:brival_recruitment_task/features/people/data/local/services/favorites_service_interface.dart';
import 'package:brival_recruitment_task/features/people/data/models/person_model.dart';
import 'favorites_event.dart';
import 'favorites_state.dart';

@injectable
class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  final FavoritesServiceInterface _favoritesService;

  FavoritesBloc(this._favoritesService) : super(const FavoritesState()) {
    on<AddToFavorites>(_onAddToFavorites);
    on<RemoveFromFavorites>(_onRemoveFromFavorites);
    on<CheckIfFavorite>(_onCheckIfFavorite);
    on<LoadFavorites>(_onLoadFavorites);
    on<ToggleFavorite>(_onToggleFavorite);
  }

  Future<void> _onAddToFavorites(AddToFavorites event, Emitter<FavoritesState> emit) async {
    try {
      emit(state.copyWith(isLoading: true));
      final success = await _favoritesService.addToFavorites(event.person);
      if (success) {
        emit(state.copyWith(isLoading: false, favorites: [...state.favorites, event.person]));
      } else {
        emit(state.copyWith(isLoading: false));
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: 'Failed to add to favorites'));
    }
  }

  Future<void> _onRemoveFromFavorites(
    RemoveFromFavorites event,
    Emitter<FavoritesState> emit,
  ) async {
    try {
      emit(state.copyWith(isLoading: true));
      final success = await _favoritesService.removeFromFavorites(event.person);
      if (success) {
        final updatedFavorites = state.favorites
            .where((person) => person.created != event.person.created)
            .toList();
        emit(state.copyWith(isLoading: false, favorites: updatedFavorites));
      } else {
        emit(state.copyWith(isLoading: false));
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: 'Failed to remove from favorites'));
    }
  }

  Future<void> _onCheckIfFavorite(CheckIfFavorite event, Emitter<FavoritesState> emit) async {
    try {
      final isFavorite = await _favoritesService.isFavorite(event.person);
      emit(
        state.copyWith(favoriteStatus: {...state.favoriteStatus, event.person.created: isFavorite}),
      );
    } catch (e) {
      emit(state.copyWith(error: 'Failed to check favorite status'));
    }
  }

  Future<void> _onLoadFavorites(LoadFavorites event, Emitter<FavoritesState> emit) async {
    try {
      emit(state.copyWith(isLoading: true));
      final favorites = await _favoritesService.getFavorites();
      final favoriteStatus = <String, bool>{};

      for (final person in favorites) {
        favoriteStatus[person.created] = true;
      }

      emit(state.copyWith(isLoading: false, favorites: favorites, favoriteStatus: favoriteStatus));
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: 'Failed to load favorites'));
    }
  }

  Future<void> _onToggleFavorite(ToggleFavorite event, Emitter<FavoritesState> emit) async {
    try {
      emit(state.copyWith(isLoading: true));
      final isCurrentlyFavorite = state.favoriteStatus[event.person.created] ?? false;

      if (isCurrentlyFavorite) {
        final success = await _favoritesService.removeFromFavorites(event.person);
        if (success) {
          final updatedFavorites = state.favorites
              .where((person) => person.created != event.person.created)
              .toList();
          final updatedStatus = Map<String, bool>.from(state.favoriteStatus);
          updatedStatus[event.person.created] = false;

          emit(
            state.copyWith(
              isLoading: false,
              favorites: updatedFavorites,
              favoriteStatus: updatedStatus,
            ),
          );
        } else {
          emit(state.copyWith(isLoading: false));
        }
      } else {
        final success = await _favoritesService.addToFavorites(event.person);
        if (success) {
          final updatedStatus = Map<String, bool>.from(state.favoriteStatus);
          updatedStatus[event.person.created] = true;

          emit(
            state.copyWith(
              isLoading: false,
              favorites: [...state.favorites, event.person],
              favoriteStatus: updatedStatus,
            ),
          );
        } else {
          emit(state.copyWith(isLoading: false));
        }
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: 'Failed to toggle favorite'));
    }
  }

  Future<bool> isFavorite(PersonModel person) async {
    return await _favoritesService.isFavorite(person);
  }
}
