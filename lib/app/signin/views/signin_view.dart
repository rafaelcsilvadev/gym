import 'package:flutter/material.dart';
import 'package:gym/core/theme/app_colors.dart';
import 'package:gym/core/widgets/app_input.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInInState();
}

class _SignInInState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: AppInput(
          labelText: 'E-mail',
          onChange: (value) => print(value),
        ),
      ),
    );
  }
}
