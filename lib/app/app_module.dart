import 'package:flutter_modular/flutter_modular.dart';
import 'package:produtor_app/app/core/base/base_store.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/splash/splash_page.dart';
import 'modules/counter/counter_module.dart';
import 'modules/home/home_module.dart';
import 'modules/login/login_module.dart';
import 'modules/register/register_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    AsyncBind((i) => SharedPreferences.getInstance()),
    Bind.singleton((i) => BaseStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => SplashPage()),
    ModuleRoute('/login', module: LoginModule()),
    ModuleRoute('/register', module: RegisterModule()),
    ModuleRoute('/home', module: HomeModule()),
    ModuleRoute('/counter', module: CounterModule(), transition: TransitionType.noTransition),
  ];
}
