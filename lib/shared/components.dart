import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  required Color background,
  required Function function,
  required String text,
}) =>
    Container(
      width: width,
      color: background,
      child: MaterialButton(
        onPressed: function(),
        child: Text(
          text.toUpperCase(),
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
void Validation() {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final FormState _form = _formKey.currentState!;
  if (_form.validate()) {
    print('Yes');
  } else {
    print("no");
  }
}