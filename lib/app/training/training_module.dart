import 'package:flutter_modular/flutter_modular.dart';
import 'package:gym/app/training/routes/routes.dart';
import 'package:gym/app/training/views/test.dart';

class TrainingModule extends Module {

  @override
  void binds(Injector i) {
    super.binds(i);
  }

  @override
  void routes(RouteManager r) {
    super.routes(r);
    r.child(Routes.test, child: (context) => const Test());
  }
}