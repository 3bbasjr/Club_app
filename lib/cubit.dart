import 'dart:js';

import 'package:bloc/bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jezira/modules/homeScreen.dart';
import 'package:jezira/modules/profileScreen.dart';
import 'package:jezira/modules/settingScreen.dart';
import 'package:jezira/states.dart';

import 'modules/newsScreen.dart';


class jeziraCubit extends Cubit<jeziraStates>{
  jeziraCubit() :super(jeziraInitialState());
  static jeziraCubit get(context) => BlocProvider.of(context);
  int CurrentIndex = 0;
  List<BottomNavigationBarItem> bottomitems = [
    BottomNavigationBarItem(
        label:'Home' ,
        icon:Icon(
            Icons.home_filled
        ) ),
    BottomNavigationBarItem(
        label:'Profile' ,
        icon:Icon(
            Icons.person
        ) ),
    BottomNavigationBarItem(
        label:'News' ,
        icon:Icon(
            Icons.event_note_rounded
        ) ),
    BottomNavigationBarItem(
        label:'Settings' ,
        icon:Icon(
            Icons.settings
        ) ),

  ];
  List<Widget> screens =[
    homeScreen(),
    profileScreen(),
    newsScreen(),
    settingScreen(),
  ];

}