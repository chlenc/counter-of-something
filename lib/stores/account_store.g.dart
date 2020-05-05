// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AccountStore on _AccountStore, Store {
  final _$nameAtom = Atom(name: '_AccountStore.name');

  @override
  String get name {
    _$nameAtom.context.enforceReadPolicy(_$nameAtom);
    _$nameAtom.reportObserved();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.context.conditionallyRunInAction(() {
      super.name = value;
      _$nameAtom.reportChanged();
    }, _$nameAtom, name: '${_$nameAtom.name}_set');
  }

  final _$descriptionAtom = Atom(name: '_AccountStore.description');

  @override
  String get description {
    _$descriptionAtom.context.enforceReadPolicy(_$descriptionAtom);
    _$descriptionAtom.reportObserved();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.context.conditionallyRunInAction(() {
      super.description = value;
      _$descriptionAtom.reportChanged();
    }, _$descriptionAtom, name: '${_$descriptionAtom.name}_set');
  }

  final _$avatarAtom = Atom(name: '_AccountStore.avatar');

  @override
  String get avatar {
    _$avatarAtom.context.enforceReadPolicy(_$avatarAtom);
    _$avatarAtom.reportObserved();
    return super.avatar;
  }

  @override
  set avatar(String value) {
    _$avatarAtom.context.conditionallyRunInAction(() {
      super.avatar = value;
      _$avatarAtom.reportChanged();
    }, _$avatarAtom, name: '${_$avatarAtom.name}_set');
  }

  final _$changeNameAsyncAction = AsyncAction('changeName');

  @override
  Future<void> changeName(String name) {
    return _$changeNameAsyncAction.run(() => super.changeName(name));
  }

  final _$changeDescriptionAsyncAction = AsyncAction('changeDescription');

  @override
  Future<void> changeDescription(String description) {
    return _$changeDescriptionAsyncAction
        .run(() => super.changeDescription(description));
  }

  final _$setAvatarAsyncAction = AsyncAction('setAvatar');

  @override
  Future<void> setAvatar(ImageSource source) {
    return _$setAvatarAsyncAction.run(() => super.setAvatar(source));
  }

  final _$_AccountStoreActionController =
      ActionController(name: '_AccountStore');

  @override
  void changeAvatar(String avatar) {
    final _$actionInfo = _$_AccountStoreActionController.startAction();
    try {
      return super.changeAvatar(avatar);
    } finally {
      _$_AccountStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'name: ${name.toString()},description: ${description.toString()},avatar: ${avatar.toString()}';
    return '{$string}';
  }
}
