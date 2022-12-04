import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jezira/modules/upcomingScreen.dart';
import 'package:jezira/shared/colors.dart';
import 'package:jezira/shared/components.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hello,',
              style: TextStyle(
              fontSize: 14,
                color: Colors.grey
            ),),
            Text('Mr.Tarek',
              style: TextStyle(
              fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),),
          ],
        ),
        actions: [
          IconButton(onPressed: (){},
              // icon:Image.asset('assets/images/notify.png'),)
              icon:Icon(Icons.notification_important),
          color: AppColors.primary_color,)
        ],
      ),
      body: SafeArea(
    child: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.primary_color,

              borderRadius: BorderRadius.circular(20),
            ),
            height: 220,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Tickets',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),
                  SizedBox(height: 8,),
                  Row(
                    children: [
                      Text('Now you can buy a ticket online\n for your visitors',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),),
                      Spacer(),
                      Image.asset('assets/images/party.png',
                        height: 100,
                        width: 100,
                      )

                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                    ),
                    height:40 ,
                    width: 90,
                    child: TextButton(onPressed: (){},
                        child: Text('Buy now',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16
                          ),
                        )),
                  ),
                  // ListView(
                  //   children: [
                  //
                  //   ],
                  // )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,),
          Text('Upcoming',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),),
          SizedBox(
            height: 10,),
          GestureDetector(
            onTap: (){
              NavigateTo(context, upcomingScreen());},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow:[ BoxShadow(
                  color:Colors.grey.shade100,
                spreadRadius: 5,
                offset: Offset(0, 3)


                )]
              ),
              width: 340,
              height: 190,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height:120,
                      width: 340,
                      child: Image.asset('assets/images/party.png',fit: BoxFit.fitWidth,)),
                  SizedBox(height: 10,),
                  Text('Mohamed Hamaky Party',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_month,color: Colors.grey,size: 14,),
                      SizedBox(width: 5,),
                      Text('20 May, 2022',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14
                      ),)
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),

    ),
      ),
      
    );
  }
}
