import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'counter_controller.g.dart';

class CounterController = _CounterControllerBase with _$CounterController;

abstract class _CounterControllerBase with Store, Disposable {
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
