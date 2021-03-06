import 'package:flutter_modular/flutter_modular.dart';
import 'package:produtor_app/app/app_module.dart';

class HomeGuard implements RouteGuard {
  @override
  Future<bool> canActivate(String path, ModularRoute router) async {
    await Modular.isModuleReady<AppModule>();
    return true;
  }

  @override
  String get guardedRoute => '/counter';
}
