import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:jezira/modules/forgotPasswordScreen.dart';
import 'package:jezira/modules/loginScreen.dart';
import 'package:jezira/modules/register_Screen.dart';
import 'package:jezira/modules/verify_screen.dart';
import 'package:jezira/shared/appbutton.dart';
import 'package:jezira/shared/colors.dart';
import 'package:jezira/shared/components.dart';
import 'package:jezira/shared/textFormField.dart';
import 'package:jezira/shared/textFormField.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class _loginScreenState extends State<loginScreen> {


  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {

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
                    'Welcome back,',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Enter your data to login.',
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
                    'Mobile No.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  textFormField(
                    controller: phoneController,
                    keyboardType: TextInputType.number,),
                  SizedBox(
                    height: 10,),
                  Text(
                    'Password',
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
                  SizedBox(height: 25,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) {
                                    return forgotPasswordScreen();
                                  }
                              ));
                        },
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                            color: AppColors.grey_color3,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 34,
                  ),
                  appbutton(text: 'Login', onpressed: () {
                    if (_formKey.currentState!.validate()) {
                      print('validate');
                    } else {
                      print('validate error');
                    }
                  }),
                  SizedBox(
                    height: 34,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have account?  ",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) {
                                    return registerScreen();
                                  }
                              ));
                        },
                        child: Text(
                          ' Signup',
                          style: TextStyle(
                            color: AppColors.primary_color,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
