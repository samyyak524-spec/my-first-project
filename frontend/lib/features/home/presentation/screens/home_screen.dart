import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../shared/widgets/feature_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final features = [
      ('AI Assistant', Icons.record_voice_over, '/assistant'),
      ('Soil Scan', Icons.landscape, '/soil-scan'),
      ('Crop Health', Icons.eco, '/crop-health'),
      ('Weather', Icons.cloud, '/weather'),
      ('Government Schemes', Icons.account_balance, '/schemes'),
      ('Tractor Advice', Icons.agriculture, '/tractor'),
      ('Mandi Prices', Icons.currency_rupee, '/mandi'),
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('KRISHIMITRA AI')),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1.15, crossAxisSpacing: 12, mainAxisSpacing: 12),
        itemCount: features.length,
        itemBuilder: (context, i) => FeatureTile(title: features[i].$1, icon: features[i].$2, onTap: () => context.push(features[i].$3)),
      ),
    );
  }
}
