import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jezira/screens/setting/editProfileScreen.dart';
import 'package:jezira/screens/loginScreen.dart';
import 'package:jezira/screens/myEventScreen.dart';
import 'package:jezira/screens/termsScreen.dart';
import 'package:jezira/screens/tickets/ticketsScreen.dart';
import 'package:jezira/shared/colors.dart';
import 'package:jezira/shared/sett.dart';

class settingScreen extends StatelessWidget {
  const settingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Setting',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black_color,
                    ),
                  ),
                  Spacer(),
                  Container(child: Image.asset('assets/images/notify.png'))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 145,
                width: 200,
                child: Image.asset('assets/images/vector.png'),
              ),
              SizedBox(
                height: 15,
              ),
              sett(navigateTo: ticketsScreen(), path: Image.asset('assets/images/MyTickets.png',
              scale: 1,), text: 'My Tickets'),
              SizedBox(
                height: 15,
              ),
              sett(
                  navigateTo: myEventScreen(),
                  path: Image.asset('assets/images/event.png'),
                  text: 'My Event'),
              SizedBox(
                height: 15,
              ),
              sett(
                  navigateTo: myEventScreen(),
                  path: Image.asset('assets/images/Transactions.png'),
                  text: 'Transactions'),
              SizedBox(
                height: 15,
              ),
              sett(
                  navigateTo: editProfileScreen(),
                  path: Image.asset('assets/images/Editprofile.png'),
                  text: 'Edit profile'),
              SizedBox(
                height: 15,
              ),
              sett(
                  navigateTo: termsScreen(),
                  path: Image.asset('assets/images/Terms.png'),
                  text: 'Terms & Conditions'),
              SizedBox(
                height: 15,
              ),
              sett(
                  navigateTo: loginScreen(),
                  path: Image.asset('assets/images/Logout.png'),
                  text: 'Logout'),
            ],
          ),
        ),
      ),
    );
  }
}
