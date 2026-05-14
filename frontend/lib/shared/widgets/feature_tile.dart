import 'package:flutter/material.dart';

class FeatureTile extends StatelessWidget {
  const FeatureTile({required this.title, required this.icon, required this.onTap, super.key});
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => Card(
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(icon, size: 42), const SizedBox(height: 12), Text(title, textAlign: TextAlign.center)]),
          ),
        ),
      );
}
