import 'package:flutter/material.dart';

class SoilScanScreen extends StatelessWidget {
  const SoilScanScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Soil Scanner')), body: const Center(child: Text('Upload soil image for classification and NPK prediction.')));
}
