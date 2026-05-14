import 'package:flutter/material.dart';

class AssistantScreen extends StatelessWidget {
  const AssistantScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('AI Voice Assistant')), body: const Center(child: Text('Whisper STT + TTS + LLM chat endpoint integration.')));
}
