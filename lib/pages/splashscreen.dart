import 'dart:async';

import 'package:auth_account/main.dart';
import 'package:auth_account/pages/login.dart';
import 'package:auth_account/pages/onBoard.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/splashScreen' ;
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    splashScreen() ;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F7FA),
      body: Center(
        child: Image.asset('assets/blanjaloka.png', width: 300,),
      ),
    );
  }

  splashScreen() async {
    var duration =  const Duration(seconds: 4) ;
    return Timer(duration, (){
      if (introduction == 0){
        Navigator.pushReplacementNamed(context, OnBoardingPage.routeName) ;
      } else {
        Navigator.pushReplacementNamed(context, FormLogin.routeName) ;

      }
    }) ;
  }


}
