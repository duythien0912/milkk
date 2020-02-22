import 'package:milkk/app/modules/learn_chinese/learn_chinese_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:milkk/app/modules/learn_chinese/learn_chinese_page.dart';

class LearnChineseModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => LearnChineseController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => LearnChinesePage()),
      ];

  static Inject get to => Inject<LearnChineseModule>.of();
}
