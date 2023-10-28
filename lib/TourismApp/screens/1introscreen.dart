import 'dart:async';
import 'package:assignment2_july/TourismApp/screens/3login.dart';
import 'package:assignment2_july/TourismApp/screens/4signup.dart';
import 'package:assignment2_july/TourismApp/screens/5home.dart';
import 'package:flutter/material.dart';
import '2login_signup.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: IntroScreen(),
  routes: {
      'login signup': (context)=>Login_signup(),
       'login'      : (context)=>Login_Page(),
      'register'    : (context) => Registration_Page(),
      'home'        : (context)=>  Tour_Home(),
  },));
}
class IntroScreen extends StatefulWidget {
  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState(){
    Timer(const Duration(seconds: 5),() {
      Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context)=>Login_signup()));
    } );
    super.initState();
  }
 Widget build(BuildContext context) {
return Scaffold(
  backgroundColor: Colors.black,
      body: Center(
        child: Image.asset('assets/images/loggggpng-hq.png',
        width: 300,height: 300,),
      ),
    );
  }
}
