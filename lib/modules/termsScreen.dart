import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class termsScreen extends StatelessWidget {
  const termsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Terms & Conditions',
        style: TextStyle(
          fontSize: 18,
          color: Colors.black
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image.asset('assets/images/hand.jpg'),
            Text("Holding a new marathon inside the club under\n"
                " the supervision of lorem Ipsum is simply dummy\n"
                " text of the printing typesetting industry. Lorem\n"
                " Ipsum has been the industry's standard dummy\n"
                " text. Holding a new marathon inside the club\n"
                " under the supervision of lorem Ipsum is simply\n"
                " dummy text of the printing typesetting industry.\n"
                " Lorem Ipsum has been the industry's standard\n"
                " dummy text. Holding a new marathon inside the\n"
                " club under the supervision of lorem Ipsum is\n"
                " simply dummy text of the printing typesetting\n"
                " industry. Lorem Ipsum has been the industry's\n"
                " standard dummy text. Lorem Ipsum has been the\n"
                " industry's standard dummy text lorem Ipsum is\n"
                " simply dummy text of the printing typesetting industry.",
            style: TextStyle(
              fontSize: 16
            ),)
          ],
        ),
      ),
    );
  }
}
