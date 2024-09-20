import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tenth_fifth_pays/View/OTP%20Screens/otp_enter_page.dart';
import 'package:tenth_fifth_pays/View/Utils/app_logo.dart';
import 'package:tenth_fifth_pays/View/Utils/colors.dart';
import 'package:get/get.dart';


class OTPSentPage extends StatefulWidget{
  String?email;
  OTPSentPage({super.key, required this.email});

  @override
  State<OTPSentPage> createState() => _OTPSentPageState();
}

class _OTPSentPageState extends State<OTPSentPage> {

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
                  Center(
                    child: Padding(
                      padding:  EdgeInsets.only(
                          top: height*0.06
                      ),
                      child: Container(
                        height: height*0.12,
                        child: Image.asset('assets/images/OTP Screen.png'),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      top: height*0.05,
                    ),
                    child: Center(child: Text('Registration Email Sent',style: TextStyle(fontFamily: 'Arial',fontSize: 28,fontWeight: FontWeight.w600))),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      top: height*0.02,
                    ),
                    child: Center(child: Text('Check your email for confirmation code',style: TextStyle(fontFamily: 'Arial',fontSize: 20,fontWeight: FontWeight.w600))),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      top: height*0.05,
                    ),
                    child: Center(child: Text('Can\'t find the email?' ,style: TextStyle(fontFamily: 'Arial',fontSize: 16))),
                  ),
                  Center(
                      child: Text('(Check your spam folder)' ,style: TextStyle(fontFamily: 'Arial',fontSize: 16))),

                  Center(
                    child: TextButton(
                        onPressed: (){

                        },
                        child: Text('Try again',style: TextStyle(color: AppPrimaryColor.secondaryButtonColor,fontFamily: 'Arial',fontSize: 18,fontWeight: FontWeight.w600),)
                    ),
                  ),
                  SizedBox(height: height*0.2,),
                  GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Next',style: TextStyle(color: AppPrimaryColor.secondaryButtonColor,fontFamily: 'Arial',fontSize: 18,fontWeight: FontWeight.w600)),
                        Icon(Icons.arrow_forward,color: AppPrimaryColor.secondaryButtonColor,)
                      ],
                    ),
                    onTap: (){
                      Get.to(OTPEnterPage(email: widget.email,));
                    },
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}