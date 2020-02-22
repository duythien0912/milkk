import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  final dynamic arg;

  const LoginPage({Key key, this.title = "Login", this.arg}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController>
with AfterLayoutMixin<LoginPage> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
                    RaisedButton(onPressed: controller.pushToHome, child: Text("login")),
    if(widget.arg != null)
    Text(widget.arg),

        ],
      ),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    if(widget.arg == null)
    controller.pushToHome();
  }
}
