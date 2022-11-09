import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:jezira/modules/passwordScreen.dart';

import '../shared/colors.dart';
import '../shared/components.dart';

class verifyScreen extends StatelessWidget {
  const verifyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              Row(
                children: [
                  Container(
                    width: 54,
                    height: 48,
                    color: HexColor('#85C1E9'),

                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    width: 54,
                    height: 48,
                    color: HexColor('#85C1E9'),

                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    width: 54,
                    height: 48,
                    color: HexColor('#85C1E9'),

                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    width: 54,
                    height: 48,
                    color: HexColor('#85C1E9'),

                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    width: 54,
                    height: 48,
                    color: HexColor('#85C1E9'),

                  ),



                ],
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
                            return passwordScreen();
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