import 'package:flutter/material.dart';
import 'package:jezira/shared/appbutton.dart';

class upcimong extends StatelessWidget {
  const upcimong({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
    body:SafeArea(
      child: Stack(
        children: [
          Column(
            children: [
              ClipRRect(child:Image.asset(
                'assets/images/party.png',
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,),),

            ],
          ),
          Align(
            alignment: Alignment.center,
            child: ListView(
children: [
           Padding(padding: EdgeInsets.only(top: 200,left: 50,right: 50),
           child: Container(
      height: 100,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
            Row(children: [
              Icon(Icons.location_on_rounded,color: Colors.blue,),
              Text('Gezira Club, The open hall',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black
                ),),],),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Row(children: [
                  Icon(Icons.calendar_month,color: Colors.blue,),
                  Text('20 May, 2022',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black
                    ),),],),
                SizedBox(width: 35,),
                Row(children: [
                  Icon(Icons.alarm,color: Colors.blue,),
                  Text('08:30 PM',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black
                    ),),],),
              ],
            )


        ],
      ),
    ),),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Mohamed Hamaky Party',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),),
                  SizedBox(height: 12,),
                  Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey
                  ),),
                  SizedBox(height: 20,),

                  appbutton(text: 'Proceed to Payment',)
                ],
              ),
            )


],
            ),
          )
          // Image.asset('assets/images/party.png',),


        ],
      ),
    ) ,
    );
  }
}
