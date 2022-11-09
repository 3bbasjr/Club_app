import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          color: Colors.blue,)
        ],
      ),
      body: SafeArea(
    child: Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,

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
              ListView(
                children: [

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
