import 'package:flutter/material.dart';

class CropHealthScreen extends StatelessWidget {
  const CropHealthScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Crop Disease Detection')), body: const Center(child: Text('Leaf disease detection + recommendations.')));
}
