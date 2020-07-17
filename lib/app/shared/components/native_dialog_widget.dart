import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NativeDialogAlertWidget extends StatefulWidget {
  final double opacity;
  final String title;
  final String content;
  final VoidCallback onPressed;

  const NativeDialogAlertWidget(
      {Key key, this.opacity, this.title, this.content, this.onPressed})
      : super(key: key);
  @override
  _NativeDialogAlertWidgetState createState() =>
      _NativeDialogAlertWidgetState();
}

class _NativeDialogAlertWidgetState extends State<NativeDialogAlertWidget> {
  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? AlertDialog(
            title: Text(widget.title ?? 'Ops'),
            content: Text(widget.content),
            actions: <Widget>[
              FlatButton(
                child: Text("Ok"),
                onPressed: widget.onPressed ?? () => Get.back(),
              )
            ],
          )
        : CupertinoAlertDialog(
            title: Text(widget.title ?? 'Ops'),
            content: Text(widget.content),
            actions: <Widget>[
              CupertinoDialogAction(
                  isDefaultAction: true,
                  child: Text("Ok"),
                  onPressed: widget.onPressed ?? () => Get.back()),
            ],
          );
  }
}
