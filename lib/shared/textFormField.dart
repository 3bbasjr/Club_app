import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:hexcolor/hexcolor.dart';

import 'components.dart';
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController phoneController = TextEditingController();
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

 Validation() {
  final FormState _form = _formKey.currentState!;
  if (_form.validate()) {
    print('Yes');
  } else {
    print("no");
  }
}

Widget textFormField({
  Function? validator,


Icon? icon,
required TextEditingController controller,
  required TextInputType keyboardType,
}) =>                   TextFormField(
  validator:
    RequiredValidator(
        errorText: 'Required'),
  controller: controller,
keyboardType: keyboardType,
decoration: InputDecoration(
  suffixIcon: icon,
focusedBorder: OutlineInputBorder(
borderSide: BorderSide(
color: HexColor('#F3F9FF'),
),
borderRadius: BorderRadius.circular(10),
),
fillColor: HexColor('#F3F9FF')),
);
