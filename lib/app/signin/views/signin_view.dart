import 'package:flutter/material.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInInState();
}

class _SignInInState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, '/code'),
          child: Text('Clique'),
        ),
      ),
    );
  }
}
