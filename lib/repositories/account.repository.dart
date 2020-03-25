import 'package:mapapp/models/user.model.dart';
import 'package:mapapp/view-model/user.viewmodel.dart';

class AccountRepository {
  Future<UserModel> createAccount(UserModelView model) async {
    await Future.delayed(Duration(milliseconds: 1500)); //api fake
    return new UserModel(
      id: "123",
      name: model.user,
      email: model.email,
      picture: "https://picsum.photos/200/200",
      role: "student",
      token: "abobora",
    );
  }
}
