import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';
import 'components.dart';

class appbutton extends StatelessWidget {
  static const Color = AppColors.primary_color;
   final String? text;


  const appbutton({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blue,
      height: 60,
      child: TextButton(
          onPressed: () {
              final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

              final FormState? _form = _formKey.currentState;
              if (_form!.validate()) {
                print('Yes');
              } else {
                print("no");
              }

          },
          child:Text(text!,style: TextStyle(
            color: Colors.white,
            fontSize: 18
          ),)
      ),
    );
  }
}

