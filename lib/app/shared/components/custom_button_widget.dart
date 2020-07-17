import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final Color color;
  final Color borderColor;
  final Color loaderColor;
  final double height;
  final double width;
  final String title;
  final double radius;
  final VoidCallback onPressed;
  final TextStyle textStyle;
  final bool loading;
  final EdgeInsetsGeometry padding;

  CustomButtonWidget(
      {this.color,
      this.height,
      this.borderColor = Colors.transparent,
      this.loaderColor = Colors.white,
      this.width,
      this.radius = 30,
      this.title,
      this.loading,
      this.onPressed,
      this.textStyle,
      this.padding});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      padding: padding,
      height: height,
      buttonColor: color,
      minWidth: width,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
        side: BorderSide(color: borderColor),
      ),
      child: RaisedButton(
        elevation: 0,
        onPressed: onPressed,
        child: loading == true
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(loaderColor),
                    strokeWidth: 2.0,
                  ),
                ],
              )
            : Text(title, style: textStyle),
        disabledColor: color.withAlpha(150),
      ),
    );
  }
}
