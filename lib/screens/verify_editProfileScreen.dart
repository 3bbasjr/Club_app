import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:jezira/modules/loginScreen.dart';
import 'package:jezira/modules/passwordScreen.dart';
import 'package:flutter/services.dart';
import '../shared/colors.dart';
import '../shared/components.dart';

class verify_editProfileScreen extends StatelessWidget {
  const verify_editProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Edit profile',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),),
        backgroundColor: Colors.white,
        elevation: 0,

      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/Varify.jpg'),
            SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 12,
            ),

            Text('Verify',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24
              ),
            ),
            Text('A 5 digit code has been sent to\n +2 01012542255',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Form(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Container(
                    width: 54,
                    color: HexColor('#85C1E9'),

                    height: 48,
                    child: TextField(
                      onChanged: (value){
                        if(value.length ==1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style:Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.center,
                      inputFormatters: [LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly],
                      keyboardType: TextInputType.number,
                    ),),
                  SizedBox(
                    width: 54,
                    height: 48,
                    child: TextField(
                      onChanged: (value){
                        if(value.length ==1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style:Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.center,
                      inputFormatters: [LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly],
                      keyboardType: TextInputType.number,
                    ),),
                  SizedBox(
                    width: 54,
                    height: 48,
                    child: TextField(
                      onChanged: (value){
                        if(value.length ==1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style:Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.center,
                      inputFormatters: [LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly],
                      keyboardType: TextInputType.number,
                    ),),
                  SizedBox(
                    width: 54,
                    height: 48,
                    child: TextField(
                      onChanged: (value){
                        if(value.length ==1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style:Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.center,
                      inputFormatters: [LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly],
                      keyboardType: TextInputType.number,
                    ),),
                  SizedBox(
                    width: 54,
                    height: 48,
                    child: TextField(
                      onChanged: (value){
                        if(value.length ==1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style:Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.center,
                      inputFormatters: [LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly],
                      keyboardType: TextInputType.number,
                    ),),
                  SizedBox(
                    width: 54,
                    height: 48,
                    child: TextField(
                      onChanged: (value){
                        if(value.length ==1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style:Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.center,
                      inputFormatters: [LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly],
                      keyboardType: TextInputType.number,
                    ),),


                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity,
              color: Colors.blue,
              height: 60,
              child: TextButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context){
                          return loginScreen();
                        }
                    ));
              },
                  child: Text('Confirm',
                    style: TextStyle(
                        color: Colors.white
                    ),)),
            ),

            SizedBox(
              height: 34,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't receive code?   ",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                Text('Send again',
                  style: TextStyle(
                    color: AppColors.primary_color,
                    fontSize: 16,
                  ),
                ),

              ],
            ),





          ],
        ),
      ),
    );
  }
}