import 'package:flutter/material.dart';
import 'package:brival_recruitment_task/features/people/data/models/person_model.dart';
import 'package:brival_recruitment_task/features/people/presentation/widgets/person_details/stat_card.dart';
import '../../../../../utils/format_utils.dart';

class StatsGrid extends StatelessWidget {
  final PersonModel person;
  const StatsGrid({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: StatCard(
            icon: Icons.height,
            iconColor: Colors.blue[400]!,
            label: 'Height',
            value: FormatUtils.formatHeight(person.height),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: StatCard(
            icon: Icons.monitor_weight,
            iconColor: Colors.green[400]!,
            label: 'Mass',
            value: FormatUtils.formatMass(person.mass),
          ),
        ),
      ],
    );
  }
}
