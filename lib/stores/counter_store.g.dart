// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CounterStore on _CounterStore, Store {
  final _$valueAtom = Atom(name: '_CounterStore.value');

  @override
  int get value {
    _$valueAtom.context.enforceReadPolicy(_$valueAtom);
    _$valueAtom.reportObserved();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.context.conditionallyRunInAction(() {
      super.value = value;
      _$valueAtom.reportChanged();
    }, _$valueAtom, name: '${_$valueAtom.name}_set');
  }

  final _$incrementAsyncAction = AsyncAction('increment');

  @override
  Future<void> increment() {
    return _$incrementAsyncAction.run(() => super.increment());
  }

  final _$decrementAsyncAction = AsyncAction('decrement');

  @override
  Future<void> decrement() {
    return _$decrementAsyncAction.run(() => super.decrement());
  }

  final _$_CounterStoreActionController =
      ActionController(name: '_CounterStore');

  @override
  void changeCount(int count) {
    final _$actionInfo = _$_CounterStoreActionController.startAction();
    try {
      return super.changeCount(count);
    } finally {
      _$_CounterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'value: ${value.toString()}';
    return '{$string}';
  }
}
