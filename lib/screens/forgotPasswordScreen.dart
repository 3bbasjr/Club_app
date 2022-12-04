import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:jezira/modules/loginScreen.dart';
import 'package:jezira/modules/register_Screen.dart';
import 'package:jezira/modules/verify_screen.dart';
import 'package:jezira/shared/appbutton.dart';
import 'package:jezira/shared/colors.dart';
import 'package:jezira/shared/components.dart';

class forgotPasswordScreen extends StatefulWidget {
  const forgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<forgotPasswordScreen> createState() => _forgotPasswordScreenState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class _forgotPasswordScreenState extends State<forgotPasswordScreen> {

  void Validation() {
    final FormState _form = _formKey.currentState!;
    if (_form.validate()) {
      print('Yes');
    } else {
      print("no");
    }
  }


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
                    'Forgot password',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Don't worry, please enter your Mobile No.\n to sent a verify code.",
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
                  TextFormField(
                    validator: MultiValidator([
                      RequiredValidator(errorText: 'Required'),
                      MinLengthValidator(8,
                          errorText: 'Enter Valid Mobile No.')
                    ]),
                    controller: phoneController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: HexColor('#F3F9FF'),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        fillColor: HexColor('#F3F9FF')),
                  ),


                  SizedBox(
                    height: 34,
                  ),
appbutton(text: 'Confirm',),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
