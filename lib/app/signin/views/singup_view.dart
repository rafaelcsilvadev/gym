import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:gym/core/assets/images/app_images.dart';
import 'package:gym/core/theme/app_colors.dart';
import 'package:gym/core/widgets/app_button.dart';
import 'package:gym/core/widgets/app_input.dart';
import 'package:gym/core/widgets/layout.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignInInState();
}

class _SignInInState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return Layout(
      backgroundColor: AppColors.background,
      statusBarColor: AppColors.background,
      systemNavigationBarColor: AppColors.background,
      systemNavigationBarDividerColor: AppColors.background,
      statusBarBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: Svg(AppImages.girlGym),
            alignment: Alignment.topCenter,
          ),
        ),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Container(
              margin: EdgeInsets.only(top: constraints.maxHeight * 0.36),
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    AppInput(
                      labelText: 'Nome',
                      onChange: (value) {},
                      obscureText: false,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: AppInput(
                        labelText: 'E-mail',
                        onChange: (value) {},
                        obscureText: false,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: AppInput(
                        labelText: 'Senha',
                        onChange: (value) {},
                        obscureText: true,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      width: constraints.maxWidth,
                      height: 50,
                      child: AppButton(
                        onPressed: () {},
                        text: 'Salvar',
                        textColor: AppColors.neutralColor,
                        background: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
