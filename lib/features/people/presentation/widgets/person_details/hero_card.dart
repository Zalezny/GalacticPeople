import 'package:flutter/material.dart';
import 'package:brival_recruitment_task/features/people/data/models/person_model.dart';

class HeroCard extends StatelessWidget {
  final PersonModel person;
  const HeroCard({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withValues(alpha: 0.05),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Colors.blueGrey[800]!),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Text(person.gender.icon(), style: const TextStyle(fontSize: 80)),
            const SizedBox(height: 16),
            Text(
              person.name,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
