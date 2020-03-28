// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AccountStore on _AccountStore, Store {
  final _$userAtom = Atom(name: '_AccountStore.user');

  @override
  UserModel get user {
    _$userAtom.context.enforceReadPolicy(_$userAtom);
    _$userAtom.reportObserved();
    return super.user;
  }

  @override
  set user(UserModel value) {
    _$userAtom.context.conditionallyRunInAction(() {
      super.user = value;
      _$userAtom.reportChanged();
    }, _$userAtom, name: '${_$userAtom.name}_set');
  }

  final _$imageAtom = Atom(name: '_AccountStore.image');

  @override
  File get image {
    _$imageAtom.context.enforceReadPolicy(_$imageAtom);
    _$imageAtom.reportObserved();
    return super.image;
  }

  @override
  set image(File value) {
    _$imageAtom.context.conditionallyRunInAction(() {
      super.image = value;
      _$imageAtom.reportChanged();
    }, _$imageAtom, name: '${_$imageAtom.name}_set');
  }

  final _$_AccountStoreActionController =
      ActionController(name: '_AccountStore');

  @override
  dynamic setUser(UserModel um) {
    final _$actionInfo = _$_AccountStoreActionController.startAction();
    try {
      return super.setUser(um);
    } finally {
      _$_AccountStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setImage(File img) {
    final _$actionInfo = _$_AccountStoreActionController.startAction();
    try {
      return super.setImage(img);
    } finally {
      _$_AccountStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic teste() {
    final _$actionInfo = _$_AccountStoreActionController.startAction();
    try {
      return super.teste();
    } finally {
      _$_AccountStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'user: ${user.toString()},image: ${image.toString()}';
    return '{$string}';
  }
}
