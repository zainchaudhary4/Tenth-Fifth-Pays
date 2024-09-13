import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tenth_fifth_pays/View/Signup%20Page/signup_page.dart';
import 'package:tenth_fifth_pays/View/Utils/app_logo.dart';
import 'package:tenth_fifth_pays/View/Utils/colors.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // @override
  //
  // void initState() {
  //   super.initState();
  //   Timer(
  //       Duration(seconds: 3), () async {
  //     // User? user = FirebaseAuth.instance.currentUser;
  //     // if (user != null) {
  //     //
  //     //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){return UserMode(); }));
  //     //
  //     // }
  //     // else {
  //
  //       // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){return LoginPage(title:"House2Home"); }));
  //
  //     // }
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height*0.06,
                  width: width*0.4,
                  child: AppLogo.logo,
                ),
                Padding(
                  padding:  EdgeInsets.only(
                    top: height*0.02,
                    left: width*0.04,
                  ),
                  child: Text('Placeholder for H1 Heading',style: TextStyle(fontFamily: 'Arial',fontSize: 24,fontWeight: FontWeight.w600)),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                    top: height*0.02,
                    left: width*0.04,
                  ),
                  child: Text('H2 subheading here\nand here',style: TextStyle(fontFamily: 'Arial',fontSize: 20,fontWeight: FontWeight.w600)),
                ),
                Center(
                  child: Padding(
                    padding:  EdgeInsets.only(
                      top: height*0.04
                    ),
                    child: Container(
                      height: 300,
                      width: 300,
                      color: Colors.yellow,
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                    top: height*0.02,
                    left: width*0.04,
                  ),
                  child: Text('Why use Tenth Fifth Pays?',style: TextStyle(fontFamily: 'Arial',fontSize: 24,fontWeight: FontWeight.w600)),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                    top: height*0.02,
                    left: width*0.04,
                  ),
                  child: Text('Convinence',style: TextStyle(fontFamily: 'Arial',fontSize: 20,fontWeight: FontWeight.w600)),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                    top: height*0.02,
                    left: width*0.04,
                  ),
                  child: Text('Blah oooooooooooooooooooooooooooooooooooooooo',style: TextStyle(fontFamily: 'Arial',fontSize: 20)),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                    top: height*0.02,
                    left: width*0.04,
                  ),
                  child: Text('Another reason',style: TextStyle(fontFamily: 'Arial',fontSize: 20,fontWeight: FontWeight.w600)),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                    top: height*0.02,
                    left: width*0.04,
                  ),
                  child: Text('Blah oooooooooooooooooooooooooooooooooooooooo',style: TextStyle(fontFamily: 'Arial',fontSize: 20)),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                    top: height*0.02,
                    left: width*0.04,
                  ),
                  child: Text('Expertise',style: TextStyle(fontFamily: 'Arial',fontSize: 20,fontWeight: FontWeight.w600)),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                    top: height*0.02,
                    left: width*0.04,
                  ),
                  child: Text('Blah oooooooooooooooooooooooooooooooooooooooo',style: TextStyle(fontFamily: 'Arial',fontSize: 20)),
                ),
                Center(
                  child: Padding(
                    padding:  EdgeInsets.only(
                      top: height*0.02
                    ),
                    child: SizedBox(
                       height: height*0.06,
                      width: width*0.77,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppPrimaryColor.primaryColor
                        ),
                        child: Text('Let\'s Get Started',style: TextStyle(fontFamily: 'Arial',fontSize: 22,color: Colors.white,fontWeight: FontWeight.w600),),
                        onPressed: (){
                          Get.to(SignupPage());
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height*0.06,)
              ],
            ),
          ),
        )
      ),
    );
  }
}