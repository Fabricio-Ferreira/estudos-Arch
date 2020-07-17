import 'package:flutter/material.dart';

RoundedRectangleBorder borderFromBottomSheet() {
  return RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(10.0),
      topRight: Radius.circular(10.0),
    ),
    side: BorderSide(
      width: 0,
      color: Colors.transparent.withOpacity(0),
    ),
  );
}
