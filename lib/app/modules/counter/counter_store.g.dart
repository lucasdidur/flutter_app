// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CounterStore on _CounterStoreBase, Store {
  final _$counterAtom = Atom(name: '_CounterStoreBase.counter');

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  final _$incrementAsyncAction = AsyncAction('_CounterStoreBase.increment');

  @override
  Future<void> increment() {
    return _$incrementAsyncAction.run(() => super.increment());
  }

  final _$decrementAsyncAction = AsyncAction('_CounterStoreBase.decrement');

  @override
  Future<void> decrement() {
    return _$decrementAsyncAction.run(() => super.decrement());
  }

  @override
  String toString() {
    return '''
counter: ${counter}
    ''';
  }
}
