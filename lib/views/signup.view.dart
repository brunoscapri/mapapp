import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mapapp/controllers/account.controller.dart';
import 'package:mapapp/stores/account.store.dart';
import 'package:mapapp/view-model/user.viewmodel.dart';
import 'package:provider/provider.dart';

class Signup extends StatelessWidget {
  final UserModelView model = new UserModelView();
  final AccountController controller = new AccountController();

  @override
  Widget build(BuildContext context) {
    AccountStore store = Provider.of<AccountStore>(context);
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(hintText: "User"),
                    onSaved: (val) {
                      model.user = val;
                    },
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Usuario Inválida';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Email"),
                    onSaved: (val) {
                      model.email = val;
                    },
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Email inválido';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Password"),
                    obscureText: true,
                    onSaved: (val) {
                      model.password = val;
                    },
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Senha Inválida';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FlatButton(
                    child: Text("Pick picture"),
                    onPressed: () {
                      getImageFromGalery(store);
                    },
                  ),
                  //Observer(builder: (_) => Image.file(store.image)),
                  FlatButton(
                    child: Text("Signup"),
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        _formKey.currentState.save();
                        controller.createUser(model).then((data) {
                          store.setUser(data);
                        });
                      }
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future getImageFromGalery(AccountStore store) async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    await store.setImage(image);
  }
}
