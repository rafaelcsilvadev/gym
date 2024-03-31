import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:gym/app/signin/routes/routes.dart';
import 'package:gym/core/assets/images/app_images.dart';
import 'package:gym/core/theme/app_colors.dart';
import 'package:gym/core/widgets/app_button.dart';
import 'package:gym/core/widgets/app_input.dart';
import 'package:gym/core/widgets/layout.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => ResetPasswordViewState();
}

class ResetPasswordViewState extends State<ResetPasswordView> {
  final String _newPasswordTag = 'reset_password_view-new_password';
  final String _confirmTag = 'reset_password_view-confirm_password';

  @override
  void initState() {
    super.initState();
  }

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
                      tag: _newPasswordTag,
                      labelText: 'Nova senha',
                      keyboardType: TextInputType.visiblePassword,
                      onChange: (value) {},
                      obscureText: false,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: AppInput(
                        tag: _confirmTag,
                        labelText: 'Confirmar nova senha',
                        keyboardType: TextInputType.visiblePassword,
                        onChange: (value) {},
                        obscureText: true,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      width: constraints.maxWidth,
                      height: 50,
                      child: AppButton(
                        onPressed: () => Navigator.pushNamed(context, Routes.signIn),
                        text: 'Enviar',
                        textColor: AppColors.neutralColor,
                        background: AppColors.primaryColor,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      child: TextButton(
                        onPressed: () => Navigator.pushNamed(context, Routes.resetPassword),
                        child: const Text(
                          'Voltar',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            color: AppColors.neutralColor,
                          ),
                        ),
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
