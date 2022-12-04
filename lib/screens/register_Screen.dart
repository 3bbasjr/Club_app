import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:jezira/modules/loginScreen.dart';
import 'package:jezira/modules/verify_screen.dart';
import 'package:jezira/shared/appbutton.dart';
import 'package:jezira/shared/colors.dart';
import 'package:jezira/shared/components.dart';
import 'package:jezira/shared/textFormField.dart';

class registerScreen extends StatefulWidget {
  const registerScreen({Key? key}) : super(key: key);

  @override
  State<registerScreen> createState() => _registerScreenState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class _registerScreenState extends State<registerScreen> {

  TextEditingController membershipController = TextEditingController();
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
                    'Welcome,\nEnter your details to start',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'you will receive a 5 digit code to verify next',
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
                    'Membership No.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
              textFormField(controller: membershipController,keyboardType: TextInputType.number,),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Mobile No.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  textFormField(controller: phoneController,
                  keyboardType: TextInputType.number,),
                  SizedBox(
                    height: 34,
                  ),
appbutton(text: 'Next',
onpressed: (){
  if(_formKey.currentState!.validate()){
    print('validate');
  }else{
    print('validate error');
  }
},),
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
                  SizedBox(
                    height: 34,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have account?  ',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context){
                                    return loginScreen();
                                  }
                              ));
                        },
                        child: Text(
                          'Login',
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
