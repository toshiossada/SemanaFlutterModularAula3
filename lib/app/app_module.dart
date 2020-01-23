import 'package:aula_0/app/app_controller.dart';
import 'package:aula_0/app/app_widget.dart';
import 'package:aula_0/app/modules/home/home_module.dart';
import 'package:aula_0/app/shared/Utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();
}
  