import 'package:flutter/material.dart';

class Stat extends StatelessWidget {
  final String label;
  final int value;
  const Stat({required this.label, required this.value, super.key});
  @override
  Widget build(BuildContext context) {
    return Text('$label: $value', style: const TextStyle(color: Colors.white54, fontSize: 12));
  }
}
