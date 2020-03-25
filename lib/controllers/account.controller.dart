import 'package:mapapp/models/user.model.dart';
import 'package:mapapp/repositories/account.repository.dart';
import 'package:mapapp/view-model/user.viewmodel.dart';

class AccountController {
  AccountRepository repository = new AccountRepository();

  Future<UserModel> createUser(UserModelView model) async {
    var user = await repository.createAccount(model);
    return user;
  }
}
