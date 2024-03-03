import 'package:flutter/material.dart';
import 'package:gym/core/theme/app_colors.dart';
import 'package:gym/core/widgets/app_button.dart';

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
        child: AppButton(
          onPressed: (){},
          progressColor: AppColors.neutralColor,
          text: 'Enviar',
          background: AppColors.secondaryColor,
          textColor: AppColors.neutralColor,
          loading: false,
        ),
      ),
    );
  }
}
