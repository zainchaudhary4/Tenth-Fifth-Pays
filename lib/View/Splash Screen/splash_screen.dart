import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3), () async {
      // User? user = FirebaseAuth.instance.currentUser;
      // if (user != null) {
      //
      //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){return UserMode(); }));
      //
      // }
      // else {

        // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){return LoginPage(title:"House2Home"); }));

      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width:MediaQuery.of(context).size.width,
          child: Center(
            child: Text('Hello Worlds',style: TextStyle(fontSize: 48,fontWeight: FontWeight.bold),)
          )
      ),
    );
  }
}