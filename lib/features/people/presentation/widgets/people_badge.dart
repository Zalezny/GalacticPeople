import 'package:flutter/material.dart';

class PeopleBadge extends StatelessWidget {
  final String label;
  const PeopleBadge({required this.label, super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.blueGrey[800],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(label, style: const TextStyle(color: Colors.white70, fontSize: 11)),
    );
  }
}
