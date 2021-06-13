import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:produtor_app/app/base/base_state_modular.dart';
import 'package:produtor_app/app/base/base_stateful_modular.dart';

import 'counter_store.dart';

class CounterPage extends BaseModularStateful {
  const CounterPage({Key key}) : super(key: key, title: "Counter");

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends BaseModularState<CounterPage, CounterStore> {
  @override
  Widget builder(BuildContext context) {
    return Observer(
      builder: (context) => Text('Total: ${store.counter}'),
    );
  }

  @override
  Widget buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        store.increment();
      },
      child: Icon(Icons.add),
    );
  }
}
