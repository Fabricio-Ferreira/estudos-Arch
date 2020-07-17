import 'package:estudos/app/shared/styles/custom_color.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Loader extends StatelessWidget {
  Color color;

  Loader({this.color}) {
    if (this.color == null) color = CustomColors.COLOR_BASE;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent.withOpacity(0.6),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(this.color),
            ),
          )
        ],
      ),
    );
  }
}
