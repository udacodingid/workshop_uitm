import 'dart:async';

import 'package:flutter/material.dart';
import 'package:workshop_uitm/main.dart';

class PageSplashScreen extends StatefulWidget {
  const PageSplashScreen({Key? key}) : super(key: key);

  @override
  _PageSplashScreenState createState() => _PageSplashScreenState();
}

class _PageSplashScreenState extends State<PageSplashScreen> {



  //method untuk timer
  nextAfterTimer() async{
    var duration = Duration(seconds: 5);
    return Timer(
    duration, (){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)
      => PageSatu()),(route) => false);
    }
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nextAfterTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('asset/logo_uitm.png'),
              Text('UiTM Apps',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
