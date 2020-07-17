import 'package:estudos/app/modules/feed/feed_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:estudos/app/modules/feed/feed_page.dart';

class FeedModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => FeedBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => FeedPage();

  static Inject get to => Inject<FeedModule>.of();
}
