import 'package:flutter_modular/flutter_modular.dart';
import 'package:gym/app/signin/routes/routes.dart';
import 'package:gym/app/signin/views/code_view.dart';
import 'package:gym/app/signin/views/reset_password.dart';
import 'package:gym/app/signin/views/reset_password_code_view.dart';
import 'package:gym/app/signin/views/reset_password_email_view.dart';
import 'package:gym/app/signin/views/signin_view.dart';
import 'package:gym/app/signin/views/singup_view.dart';

class SignInModule extends Module {

  @override
  void binds(Injector i) {
    super.binds(i);
  }

  @override
  void routes(RouteManager r) {
    super.routes(r);
    r.child(Routes.signIn, child: (context) => const SignInView());
    r.child('/code', child: (context) => const CodeView());
    r.child(Routes.signUp, child: (context) => const SignUpView());
    r.child(Routes.resetPasswordEmail, child: (context) => const ResetPasswordEmailView());
    r.child(Routes.resetPasswordCode, child: (context) => const ResetPasswordCodeView());
    r.child(Routes.resetPassword, child: (context) => const ResetPasswordView());
  }
}