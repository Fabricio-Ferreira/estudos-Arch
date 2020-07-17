import 'package:dio/dio.dart';
import 'package:estudos/app/app_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:estudos/app/modules/login/login_bloc.dart';
import 'package:estudos/app/services/custom_dio.dart';
import 'package:flutter/material.dart';
import 'package:estudos/app/app_widget.dart';

class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => AppBloc()),
        Bloc((i) => LoginBloc()),
      ];

  @override
  List<Dependency> get dependencies => [
        Dependency((i) => Dio()),
        Dependency((i) => CustomDio(i.getDependency<Dio>())),
      ];

  @override
  Widget get view => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
