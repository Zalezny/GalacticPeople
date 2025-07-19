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
        child: Table(
          columnWidths: const {0: IntrinsicColumnWidth(), 1: FlexColumnWidth()},
          children: [
            _tableRow('Birth Year', FormatUtils.formatBirthYear(person.birthYear)),
            _tableSpacer(),
            _tableRow('Hair Color', person.hairColor),
            _tableSpacer(),
            _tableRow('Gender', person.gender.name),
          ],
        ),
      ),
    );
  }

  TableRow _tableRow(String label, String value) {
    return TableRow(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(label, style: TextStyle(color: Colors.white70)),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(value, style: const TextStyle(color: Colors.white)),
          ),
        ),
      ],
    );
  }

  TableRow _tableSpacer() => const TableRow(children: [SizedBox(height: 12), SizedBox(height: 12)]);
}
