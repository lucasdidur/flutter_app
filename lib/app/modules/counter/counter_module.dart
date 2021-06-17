import 'package:flutter_modular/flutter_modular.dart';

import 'counter_page.dart';
import 'counter_controller.dart';

class CounterModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => CounterController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => CounterPage()),
  ];
}
