import 'package:flutter/material.dart';
import 'package:brival_recruitment_task/features/people/data/models/person_model.dart';
import 'package:brival_recruitment_task/features/people/presentation/widgets/person_details/characteristic_row.dart';

class PhysicalCharacteristicsCard extends StatelessWidget {
  final PersonModel person;
  const PhysicalCharacteristicsCard({super.key, required this.person});

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
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.face, color: Colors.purple[400], size: 20),
                const SizedBox(width: 8),
                const Text(
                  'Physical Characteristics',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Column(
              children: [
                if (person.hairColor != 'n/a' && person.hairColor != 'none') CharacteristicRow(label: 'Hair Color', value: person.hairColor),
                CharacteristicRow(label: 'Eye Color', value: person.eyeColor),
                CharacteristicRow(label: 'Skin Color', value: person.skinColor),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
