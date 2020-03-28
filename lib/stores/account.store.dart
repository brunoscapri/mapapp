import 'dart:io';

import 'package:mapapp/models/user.model.dart';

import 'package:mobx/mobx.dart';
part 'account.store.g.dart';

class AccountStore = _AccountStore with _$AccountStore;

abstract class _AccountStore with Store {
  @observable
  UserModel user = new UserModel();

  @observable
  File image = new File('');

  @action
  setUser(UserModel um) {
    user = um;
  }

  @action
  setImage(File img) {
    this.image = img;
  }

  @action
  teste() {
    print(this.image);
  }
}
