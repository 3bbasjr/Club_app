import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:jezira/modules/forgotPasswordScreen.dart';
import 'package:jezira/modules/loginScreen.dart';
import 'package:jezira/modules/register_Screen.dart';
import 'package:jezira/modules/verify_screen.dart';
import 'package:jezira/shared/colors.dart';
import 'package:jezira/shared/components.dart';
import 'package:jezira/shared/textFormField.dart';
import 'package:jezira/shared/textFormField.dart';

class resetPasswordScreen extends StatefulWidget {
  const resetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<resetPasswordScreen> createState() => _resetPasswordScreenState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class _resetPasswordScreenState extends State<resetPasswordScreen> {
  void Validation() {
    final FormState _form = _formKey.currentState!;
    if (_form.validate()) {
      print('Yes');
    } else {
      print("no");
    }
  }



  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool obscure = true;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(22),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/signup.jpg'),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Reset Password',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Add a new password',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 34,
                  ),
                  Text(
                    'Password',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ), textFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword, isPassword: null,),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Confirm Password',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  textFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,),


                  SizedBox(
                    height: 34,
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.blue,
                    height: 60,
                    child: TextButton(
                        onPressed: () {
                          Validation();

                        },
                        child: Text(
                          'Confirm',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),

                  // defaultButton(
                  //     background: AppColors.primary_color,
                  // function: (){
                  //   Navigator.push(context,
                  //       MaterialPageRoute(
                  //           builder: (context){
                  //             return verifyScreen();
                  //           }
                  //       ));
                  // },
                  // text:'Next' ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
