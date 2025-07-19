import 'package:flutter/material.dart';

import '../../../../../utils/format_utils.dart';
import '../../../data/models/person_model.dart';

class PersonBasicInfoTable extends StatelessWidget {
  final PersonModel person;
  const PersonBasicInfoTable({super.key, required this.person});

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
            _infoRow('Birth Year', FormatUtils.formatBirthYear(person.birthYear)),
            _infoRow('Hair Color', person.hairColor),
            _infoRow('Gender', person.gender.name),
          ],
        ),
      ),
    );
  }

  Widget _infoRow(String label, String? value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(color: Colors.white70)),
          Text(value ?? 'Unknown', style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
