 import 'package:flutter/material.dart';
import 'screens/homeScreen.dart';



void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,theme: ThemeData(
    primarySwatch: Colors.teal,

  ),
    home: HomeScreen(),


  ));
}