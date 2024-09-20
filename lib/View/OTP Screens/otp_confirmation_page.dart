import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tenth_fifth_pays/View/Login%20Page/login_page.dart';
import 'package:tenth_fifth_pays/View/OTP%20Screens/otp_enter_page.dart';
import 'package:tenth_fifth_pays/View/Utils/app_logo.dart';
import 'package:tenth_fifth_pays/View/Utils/colors.dart';
import 'package:get/get.dart';


class OtpConfirmationPage extends StatefulWidget{
  OtpConfirmationPage({super.key,});

  @override
  State<OtpConfirmationPage> createState() => _OTPConfirmationPageState();
}

class _OTPConfirmationPageState extends State<OtpConfirmationPage> {

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
                    child: Center(child: Text('Registration Success!',style: TextStyle(fontFamily: 'Arial',fontSize: 28,fontWeight: FontWeight.w600))),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      top: height*0.02,
                    ),
                    child: Center(child: Text('Your email has been confirmed',style: TextStyle(fontFamily: 'Arial',fontSize: 14,fontWeight: FontWeight.w600))),
                  ),
                  Center(
                    child: Padding(
                      padding:  EdgeInsets.only(
                          top: height*0.03
                      ),
                      child: SizedBox(
                        height: height*0.06,
                        width: width*0.77,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppPrimaryColor.primaryColor
                          ),
                          child: Text('Let\'s Have Some Fun',style: TextStyle(fontFamily: 'Arial',fontSize: 22,color: Colors.white,fontWeight: FontWeight.w600),),
                          onPressed: (){
                             Get.to(LoginPage());
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}