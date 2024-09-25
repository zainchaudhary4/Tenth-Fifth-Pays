import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tenth_fifth_pays/Controller/Signup%20Page/signup_page_controller.dart';
import 'package:tenth_fifth_pays/View/Login%20Page/login_page.dart';
import 'package:tenth_fifth_pays/View/OTP%20Screens/otp_sent_page.dart';
import 'package:tenth_fifth_pays/View/Utils/app_logo.dart';
import 'package:tenth_fifth_pays/View/Utils/colors.dart';
import 'package:tenth_fifth_pays/View/Widgets/textfields.dart';
import 'package:get/get.dart';


class SignupPage extends StatelessWidget{

  final SignUpController _signUpController= Get.put(SignUpController());

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
                        child: Image.asset('assets/images/Signup.png'),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      top: height*0.05,
                    ),
                    child: Center(child: Text('Register',style: TextStyle(fontFamily: 'Arial',fontSize: 28,fontWeight: FontWeight.w600))),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      top: height*0.02,
                    ),
                    child: Center(child: Text('Create an account to get started',style: TextStyle(fontFamily: 'Arial',fontSize: 20,fontWeight: FontWeight.w600))),
                  ),
                  Center(
                    child: Padding(
                      padding:  EdgeInsets.only(
                          top: height*0.05
                      ),
                      child: CustomTextField(
                          label: 'First Name',
                          controller: _signUpController.fNameController,
                        obscureText: false,
                        textInputType: TextInputType.text,
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding:  EdgeInsets.only(
                          top: height*0.02
                      ),
                      child: CustomTextField(
                          label: 'Last Name',
                          controller: _signUpController.lNameController,
                        obscureText: false,
                        textInputType: TextInputType.text,
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding:  EdgeInsets.only(
                          top: height*0.02
                      ),
                      child: CustomTextField(
                          label: 'Email',
                          controller: _signUpController.emailController,
                        obscureText: false,
                        textInputType: TextInputType.emailAddress,
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding:  EdgeInsets.only(
                          top: height*0.02
                      ),
                      child: CustomTextField(
                          label: 'Password',
                          controller: _signUpController.passwordController,
                        obscureText: true,
                        textInputType: TextInputType.text,
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding:  EdgeInsets.only(
                          top: height*0.02
                      ),
                      child: CustomTextField(
                          label: 'Re-enter Password',
                          controller: _signUpController.reEnterPasswordController,
                        obscureText: true,
                        textInputType: TextInputType.text,
                      ),
                    ),
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
                          child: Text('Register',style: TextStyle(fontFamily: 'Arial',fontSize: 22,color: Colors.white,fontWeight: FontWeight.w600),),
                          onPressed: (){
                            Get.to(OTPSentPage(email: _signUpController.emailController.text,));
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      top: height*0.05,
                    ),
                    child: Center(child: Text('Already have an account?',style: TextStyle(fontFamily: 'Arial',fontSize: 18,fontWeight: FontWeight.w500))),
                  ),
                  Center(
                    child: TextButton(
                        onPressed: (){
                          Get.offAll(LoginPage());
                        },
                        child: Text('Login here',style: TextStyle(color: AppPrimaryColor.secondaryButtonColor,fontFamily: 'Arial',fontSize: 18,fontWeight: FontWeight.w600),)
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