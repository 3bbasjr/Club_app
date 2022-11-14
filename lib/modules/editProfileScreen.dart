import 'package:back_button_interceptor/back_button_interceptor.dart';
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

class editProfileScreen extends StatefulWidget {
  const editProfileScreen({Key? key}) : super(key: key);

  @override
  State<editProfileScreen> createState() => _editProfileScreenState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class _editProfileScreenState extends State<editProfileScreen> {




  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool obscure = true;

    return Scaffold(
      appBar: AppBar(
        title: Text('Edit profile',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.black
        ),),
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
                    'Hello Mr.Tarek',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'you can edit your date but we will need to\nverify it to confirm edits',
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
                    controller: phoneController, keyboardType: TextInputType.number,),
                  SizedBox(
                    height: 10,),
                  Text(
                    'Current Password',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  textFormField(controller: passwordController, keyboardType: TextInputType.visiblePassword,
                    isPassword: true,
                  ),
                  SizedBox(
                    height: 10,),
                  Text(
                    'New Password',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  textFormField(controller: passwordController, keyboardType: TextInputType.visiblePassword,
                    isPassword: true,
                  ),
                  SizedBox(
                    height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 160,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColors.primary_color),
                          color: AppColors.white_color
                        ),
                        child: TextButton(onPressed: (){},
                            child: Text('Cancle',
                            style: TextStyle(
                              color: AppColors.primary_color,
                              fontSize: 18
                            ),)),
                      ),
                      Container(
                        width: 160,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.primary_color
                        ),
                        child: TextButton(onPressed: (){},
                            child: Text('Save',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                            ),)),
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
