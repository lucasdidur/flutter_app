import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
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
}