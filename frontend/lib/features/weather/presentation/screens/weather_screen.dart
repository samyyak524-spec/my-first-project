import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Weather Intelligence')), body: const Center(child: Text('Forecast + smart irrigation schedule.')));
}
