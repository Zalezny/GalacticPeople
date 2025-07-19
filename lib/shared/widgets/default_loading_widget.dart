import 'package:flutter/material.dart';

class DefaultLoadingWidget extends StatelessWidget {
  final String? title;
  final String? subtitle;

  const DefaultLoadingWidget({super.key, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(color: Colors.yellow, strokeWidth: 4),
          const SizedBox(height: 24),
          Text(
            title ?? 'Loading characters...',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(height: 8),
          Text(subtitle ?? 'Fetching data from a galaxy far, far away...', style: TextStyle(color: Colors.white70)),
        ],
      ),
    );
  }
}
