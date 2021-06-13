import 'package:flutter_modular/flutter_modular.dart';
import 'package:produtor_app/app/base/base_store.dart';
import 'package:produtor_app/app/guards/home_guard.dart';
import 'package:produtor_app/app/modules/counter/counter_module.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    AsyncBind((i) => SharedPreferences.getInstance()),
    Bind.singleton((i) => BaseStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute,
        module: HomeModule(), guards: [HomeGuard()], transition: TransitionType.noTransition),
    ModuleRoute('/counter', module: CounterModule(), transition: TransitionType.noTransition),
  ];
}
