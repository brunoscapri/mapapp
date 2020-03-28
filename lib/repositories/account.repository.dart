import 'package:dio/dio.dart';
import 'package:mapapp/models/user.model.dart';
import 'package:mapapp/view-model/user.viewmodel.dart';
import '../models/user.model.dart';
import '../settings.dart';

class AccountRepository {
  Dio dio = new Dio();

  Future<UserModel> createAccount(UserModelView model) async {
    dio.options.headers['content-Type'] = 'application/json';

    var url = "${Settings.apiUrl}user";

    try {
      Response res = await dio.post(url, data: {
        "name": model.user,
        "email": model.email,
        "password": model.password
      });
      return UserModel.fromJson(res.data);
    } catch (e) {
      print(e);
    }
  }
}
