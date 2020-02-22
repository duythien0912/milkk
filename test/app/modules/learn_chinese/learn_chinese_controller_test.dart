import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:milkk/app/modules/learn_chinese/learn_chinese_controller.dart';
import 'package:milkk/app/modules/learn_chinese/learn_chinese_module.dart';

void main() {
  initModule(LearnChineseModule());
  LearnChineseController learnchinese;

  setUp(() {
    learnchinese = LearnChineseModule.to.get<LearnChineseController>();
  });

  group('LearnChineseController Test', () {
    test("First Test", () {
      expect(learnchinese, isInstanceOf<LearnChineseController>());
    });

    test("Set Value", () {
      expect(learnchinese.value, equals(0));
      learnchinese.increment();
      expect(learnchinese.value, equals(1));
    });
  });
}
