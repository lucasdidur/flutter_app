import 'package:mobx/mobx.dart';
part 'base_store.g.dart';

class BaseStore = _BaseStoreBase with _$BaseStore;

abstract class _BaseStoreBase with Store {
  @observable
  int currentIndex = 0;
}
