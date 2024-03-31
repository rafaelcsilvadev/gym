import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:gym/app/signin/routes/routes.dart';
import 'package:gym/core/assets/images/app_images.dart';
import 'package:gym/core/theme/app_colors.dart';
import 'package:gym/core/widgets/app_button.dart';
import 'package:gym/core/widgets/app_input.dart';
import 'package:gym/core/widgets/layout.dart';

class ResetPasswordEmailView extends StatefulWidget {
  const ResetPasswordEmailView({super.key});

  @override
  State<ResetPasswordEmailView> createState() => ResetPasswordEmailViewState();
}

class ResetPasswordEmailViewState extends State<ResetPasswordEmailView> {
  final String _emailTag = 'reset_password_email_view-email';

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
                      tag: _emailTag,
                      keyboardType: TextInputType.emailAddress,
                      labelText: 'E-mail',
                      onChange: (value) {},
                      obscureText: false,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      width: constraints.maxWidth,
                      height: 50,
                      child: AppButton(
                        onPressed: () => Navigator.pushNamed(
                          context,
                          Routes.resetPasswordCode,
                        ),
                        text: 'Enviar',
                        textColor: AppColors.neutralColor,
                        background: AppColors.primaryColor,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      child: TextButton(
                        onPressed: () => Navigator.pushNamed(context, Routes.signIn),
                        child: const Text(
                          'Voltar',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            color: AppColors.neutralColor,
                          ),
                        ),
                      ),
                    )
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
