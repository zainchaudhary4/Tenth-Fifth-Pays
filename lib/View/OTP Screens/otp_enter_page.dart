import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tenth_fifth_pays/View/OTP%20Screens/otp_confirmation_page.dart';
import 'package:tenth_fifth_pays/View/Utils/app_logo.dart';
import 'package:tenth_fifth_pays/View/Utils/colors.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import '../../Controller/OTP Enter Page/verify_otp_controller.dart';

class OTPEnterPage extends StatefulWidget{
  String? email;

  OTPEnterPage({super.key, required this.email});
  @override
  State<OTPEnterPage> createState() => _OTPEnterPageState();
}

class _OTPEnterPageState extends State<OTPEnterPage> {
  final VerifyOTPController _verifyOTPController = Get.put(VerifyOTPController());


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
                      // left: width*0.07,
                      // right: width*0.07
                    ),
                    child: Center(child: Text('Enter the 4-digit code\n      sent to you at:',style: TextStyle(fontFamily: 'Arial',fontSize: 28,fontWeight: FontWeight.w600))),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      top: height*0.02,
                    ),
                    child: Center(child: Text('${widget.email}',style: TextStyle(fontFamily: 'Arial',fontSize: 20,fontWeight: FontWeight.w600))),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      top: height*0.02,
                    ),
                    child: Center(
                      child: Pinput(
                        controller:  _verifyOTPController.verifyOTP,
                        keyboardType: TextInputType.number,
                        length: 4,
                        defaultPinTheme: PinTheme(
                          width: 50,
                          height: 50,
                          textStyle: const TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                        onCompleted: (pin) => debugPrint(pin),
                      ),
                    ),
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
                          child: Text('Verify OTP',style: TextStyle(fontFamily: 'Arial',fontSize: 22,color: Colors.white,fontWeight: FontWeight.w600),),
                          onPressed: (){
                             Get.to(OtpConfirmationPage());
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