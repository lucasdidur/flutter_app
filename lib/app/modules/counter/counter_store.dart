import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'counter_store.g.dart';

class CounterStore = _CounterStoreBase with _$CounterStore;

abstract class _CounterStoreBase with Store, Disposable {
  @observable
  int counter = 0;

  @action
  Future<void> increment() async {
    counter++;
  }

  @action
  Future<void> decrement() async {
    counter--;
  }

  @override
  void dispose() {
    print('dispose counter store');
  }
}
