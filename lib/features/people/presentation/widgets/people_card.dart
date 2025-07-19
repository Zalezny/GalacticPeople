import 'package:flutter/material.dart';
import 'package:brival_recruitment_task/features/people/data/models/person_model.dart';
import 'package:brival_recruitment_task/features/people/presentation/widgets/favorite_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:brival_recruitment_task/core/router/app_router.dart';
import 'package:brival_recruitment_task/features/people/presentation/widgets/badge.dart';
import 'package:brival_recruitment_task/features/people/presentation/widgets/stat.dart';
import '../../../../utils/format_utils.dart';

class PeopleCard extends StatelessWidget {
  final PersonModel person;
  const PeopleCard({super.key, required this.person});

  void _handleRoute(BuildContext context) {
    final urlParts = person.url.split('/');
    final id = int.tryParse(urlParts.where((s) => s.isNotEmpty).last) ?? 1;
    context.router.navigate(PersonDetailsRoute(personId: id));
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withValues(alpha: 0.05),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Colors.blueGrey[800]!),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () => _handleRoute(context),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(person.gender.icon(), style: const TextStyle(fontSize: 28)),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      person.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  FavoriteButton(key: ValueKey(person.url), person: person, size: 20),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Icon(Icons.height, color: Colors.blue[300], size: 18),
                  const SizedBox(width: 4),
                  Text(
                    FormatUtils.formatHeight(person.height),
                    style: const TextStyle(color: Colors.white70, fontSize: 13),
                  ),
                  const SizedBox(width: 16),
                  Icon(Icons.monitor_weight, color: Colors.green[300], size: 18),
                  const SizedBox(width: 4),
                  Text(
                    FormatUtils.formatMass(person.mass),
                    style: const TextStyle(color: Colors.white70, fontSize: 13),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.cake, color: Colors.yellow[600], size: 18),
                  const SizedBox(width: 4),
                  Text(
                    'Born: ${FormatUtils.formatBirthYear(person.birthYear)}',
                    style: const TextStyle(color: Colors.white70, fontSize: 13),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 4,
                children: [
                  if (person.hairColor != 'n/a' && person.hairColor != 'none')
                    PeopleBadge(label: 'Hair: ${person.hairColor}'),
                  PeopleBadge(label: 'Eyes: ${person.eyeColor}'),
                  PeopleBadge(label: 'Skin: ${person.skinColor}'),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stat(label: 'Films', value: person.films.length),
                  Stat(label: 'Vehicles', value: person.vehicles.length),
                  Stat(label: 'Starships', value: person.starships.length),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
