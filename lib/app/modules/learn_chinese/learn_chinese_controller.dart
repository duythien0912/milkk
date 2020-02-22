import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'learn_chinese_controller.g.dart';

class LearnChineseController = _LearnChineseControllerBase
    with _$LearnChineseController;

abstract class _LearnChineseControllerBase with Store {
  @observable
  int value = 0;

  @observable
  final pageController = PageController(viewportFraction: 0.8);

  @action
  void increment() {
    value++;
  }
}
