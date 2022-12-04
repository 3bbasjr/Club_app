
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:jezira/modules/homeScreen.dart';
import 'package:jezira/shared/appbutton.dart';
import 'package:jezira/shared/textFormField.dart';

class passwordScreen extends StatelessWidget {
  const passwordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController passwordController = TextEditingController();
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Image.asset('assets/images/Varify.jpg'),
              SizedBox(
                height: 20,
              ),
              Text('Make it secure',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                ),
              ),
              SizedBox(
                height: 12,
              ),

              Text('Add a password to your accout',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text('Password',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              textFormField(
                controller: passwordController,
                suffixIcon: CupertinoIcons.eye_slash,
                isPassword: true

              ),
              SizedBox(
                height: 10,
              ),

              Text('Confirm Password',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              textFormField(controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                isPassword: true,

                ),
              SizedBox(
                height: 34,
              ),
              appbutton(text: 'Confirm',
              onpressed: (){
                if(_formKey.currentState!.validate()){
                  print('validate');
                }else{
                  print('validate error');
                }
              },)
            ],
          ),
        ),
      ),
    );
  }
}
