import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Observer(builder: (_) => Text(controller.value.toString())),
          RaisedButton(onPressed: controller.increment, child: Text("plus")),
          RaisedButton(onPressed: controller.minus, child: Text("minus")),
          RaisedButton(onPressed: controller.logout, child: Text("logout")),
        ],
      ),
    );
  }
}
