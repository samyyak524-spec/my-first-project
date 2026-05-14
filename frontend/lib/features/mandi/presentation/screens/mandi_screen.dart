import 'package:flutter/material.dart';

class MandiScreen extends StatelessWidget {
  const MandiScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Mandi Prices')), body: const Center(child: Text('Nearby mandi rates + price trends.')));
}
