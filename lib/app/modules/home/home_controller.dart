import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  int value = 0;
 
  @action
  void logout() {
    Modular.to.pushNamed('/login', arguments: "logout");
  }

  @action
  void increment() {
    value++;
  }

  @action
  void minus() {
    value--;
  }


}
