import 'package:flutter_modular/flutter_modular.dart';
import 'package:gym/app/signin/signin_module.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {
    super.binds(i);
  }

  @override
  void routes(RouteManager r) {
    super.routes(r);
    r.module('/', module: SignInModule());
  }
}