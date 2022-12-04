import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:jezira/shared/appbutton.dart';

import '../jezira.dart';
import '../shared/colors.dart';
import '../shared/components.dart';

class upcomingScreen extends StatelessWidget {
  const upcomingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(onTap: (){
          NavigateTo(context, jezira());
        },
          child: Icon(
            CupertinoIcons.back,
            color: AppColors.primary_color,),
        ),
        title: Text('Upcoming',style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black
        ),),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                ClipRRect(
                  child: Image.asset(
                    'assets/images/party.png',
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 200, left: 50, right: 50),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_rounded,
                                color: Colors.blue,
                              ),
                              Text(
                                'Gezira Club, The open hall',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    '20 May, 2022',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 35,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.alarm,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    '08:30 PM',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mohamed Hamaky Party',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 340,
                          height: 170,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [BoxShadow(
                              color: AppColors.grey_color1,
                              blurRadius: 1
                            )]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Tickets:',
                                style: TextStyle(
                                  fontSize: 16,
                                ),),
                                Container(
                                  height: 50,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: AppColors.blue_white_color,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.radio_button_off,color: AppColors.primary_color,),
                                      Text('Normal',
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),),
                                      Spacer(),
                                      Text('300LE',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: HexColor('#FFAF4E')
                                        ),),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: AppColors.blue_white_color,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.radio_button_off,color: AppColors.primary_color,),
                                      Text('VIP',
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),),
                                      Spacer(),
                                      Text('500LE',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: HexColor('#FFAF4E')
                                        ),),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        appbutton(
                          text: 'Proceed to Payment',
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
            // Image.asset('assets/images/party.png',),
          ],
        ),
      ),
    );
  }
}
