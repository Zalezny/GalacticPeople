import 'package:flutter/material.dart';
import 'package:brival_recruitment_task/features/people/data/models/person_model.dart';

class BirthYearCard extends StatelessWidget {
  final PersonModel person;
  const BirthYearCard({super.key, required this.person});

  String formatBirthYear(String birthYear) => birthYear == 'unknown' ? 'Unknown' : birthYear;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withValues(alpha: 0.05),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.blueGrey[800]!),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Icon(Icons.cake, color: Colors.yellow[400], size: 24),
            const SizedBox(height: 8),
            Text('Birth Year', style: TextStyle(color: Colors.white70, fontSize: 12)),
            const SizedBox(height: 4),
            Text(
              formatBirthYear(person.birthYear),
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
