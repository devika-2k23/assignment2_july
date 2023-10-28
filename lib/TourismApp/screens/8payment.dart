import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      home:Payment_Page()));
}

class Payment_Page extends StatelessWidget {
  // const LottieEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Lottie.asset('assets/Animation/Animation - 1698504822132.json')),

    );
  }

}
