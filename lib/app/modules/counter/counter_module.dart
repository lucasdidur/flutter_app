import 'package:flutter_modular/flutter_modular.dart';

import 'counter_page.dart';
import 'counter_store.dart';

class CounterModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => CounterStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => CounterPage()),
  ];
}
