import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:brival_recruitment_task/features/people/data/models/person_model.dart';
import 'package:brival_recruitment_task/features/people/presentation/blocs/favorite/favorites_bloc.dart';
import 'package:brival_recruitment_task/features/people/presentation/blocs/favorite/favorites_event.dart';
import 'package:brival_recruitment_task/features/people/presentation/blocs/favorite/favorites_state.dart';

class FavoriteButton extends StatelessWidget {
  final PersonModel person;
  final double? size;
  final Color? color;

  const FavoriteButton({super.key, required this.person, this.size, this.color});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesBloc, FavoritesState>(
      builder: (context, state) {
        final isFavorite = state.favoriteStatus[person.created] ?? false;

        return IconButton(
          onPressed: state.isLoading
              ? null
              : () {
                  context.read<FavoritesBloc>().add(FavoritesEvent.toggleFavorite(person));
                },
          icon: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            size: size ?? 24.0,
            color: isFavorite ? (color ?? Colors.red) : (color ?? Colors.grey),
          ),
        );
      },
    );
  }
}
