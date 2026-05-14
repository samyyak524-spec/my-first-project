import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _phoneController = TextEditingController(text: '+91');
  String verificationId = '';

  Future<void> _sendOtp() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: _phoneController.text,
      verificationCompleted: (_) {},
      verificationFailed: (e) => _snack(e.message ?? 'OTP failed'),
      codeSent: (id, _) => setState(() => verificationId = id),
      codeAutoRetrievalTimeout: (id) => verificationId = id,
    );
  }

  void _snack(String m) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(m)));

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('KRISHIMITRA Login')),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(children: [TextField(controller: _phoneController), const SizedBox(height: 12), ElevatedButton(onPressed: _sendOtp, child: const Text('Send OTP')), ElevatedButton(onPressed: () => context.go('/'), child: const Text('Continue'))]),
        ),
      );
}
