import 'package:flutter_modular/flutter_modular.dart';
import 'package:gym/app/signin/views/code_view.dart';
import 'package:gym/app/signin/views/signin_view.dart';

class SignInModule extends Module {

  @override
  void binds(Injector i) {
    super.binds(i);
  }

  @override
  void routes(RouteManager r) {
    super.routes(r);
    r.child('/', child: (context) => const SignInView());
    r.child('/code', child: (context) => const CodeView());
  }
}