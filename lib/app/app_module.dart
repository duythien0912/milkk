import 'package:milkk/app/modules/learn_chinese/learn_chinese_controller.dart';
import 'package:milkk/app/modules/learn_chinese/learn_chinese_module.dart';
import 'package:milkk/app/repositories/wordpress_repository.dart';
import 'package:milkk/app/services/helper_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:milkk/app/app_controller.dart';
import 'package:milkk/app/app_widget.dart';
import 'package:milkk/app/modules/home/home_module.dart';
import 'package:milkk/app/modules/login/login_controller.dart';
import 'package:milkk/app/modules/login/login_module.dart';
import 'package:milkk/app/modules/splash/splash_controller.dart';
import 'package:milkk/app/modules/splash/splash_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => WordpressRepository()),
        Bind((i) => HelperService()),
        Bind((i) => LearnChineseController()),
        Bind((i) => SplashController()),
        Bind((i) => LoginController()),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: LearnChineseModule()),
        Router('/splash', module: SplashModule()),
        Router('/login',
            module: LoginModule(), transition: TransitionType.noTransition),
        Router('/home',
            module: HomeModule(), transition: TransitionType.noTransition),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
