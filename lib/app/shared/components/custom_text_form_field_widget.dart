import 'package:estudos/app/shared/styles/custom_color.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final label;
  final hint;
  final onChanged;
  final keyboardType;
  final error;
  final controller;
  final obscureText;
  final style;
  final labelStyle;
  final hintStyle;
  final enabled;
  final initialValue;
  final suffixIcon;

  CustomTextField(
      {Key key,
      this.labelStyle,
      this.label,
      this.hint,
      this.onChanged,
      this.error,
      this.keyboardType,
      this.initialValue,
      this.controller,
      this.style,
      this.hintStyle,
      this.enabled = true,
      this.obscureText = false,
      this.suffixIcon})
      : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  FocusNode _myFocusNode = new FocusNode();
  var borderSide = BorderSide(color: CustomColors.COLOR_MONO_4, width: 0.5);

  @override
  void initState() {
    super.initState();
    _myFocusNode.addListener(() {
      setState(() {
        borderSide = _myFocusNode.hasFocus
            ? BorderSide.none
            : BorderSide(
                color: Colors.white70,
                width: 0.5,
              );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: widget.style,
      focusNode: _myFocusNode,
      textCapitalization: TextCapitalization.none,
      onChanged: widget.onChanged,
      obscureText: widget.obscureText,
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      initialValue: widget.initialValue,
      enabled: widget.enabled,
      decoration: InputDecoration(
        suffixIcon: widget.suffixIcon,
        labelText: widget.label,
        hintText: widget.hint,
        isDense: true,
        border: UnderlineInputBorder(borderSide: borderSide),
        errorText: widget.error,
      ),
    );
  }

  @override
  void dispose() {
    _myFocusNode.dispose();
    super.dispose();
  }
}
