import 'package:flutter/material.dart';
import 'package:tenth_fifth_pays/View/Signup%20Page/signup_page.dart';
import 'package:tenth_fifth_pays/View/Terms&Condition%20License%20Page/terms_&_conditions_page.dart';
import 'package:tenth_fifth_pays/View/Utils/app_logo.dart';
import 'package:tenth_fifth_pays/View/Utils/colors.dart';
import 'package:tenth_fifth_pays/View/Widgets/textfields.dart';
import 'package:get/get.dart';
import '../../Controller/Login Page/login_page_controller.dart';

class LoginPage extends StatelessWidget{
   LoginPage({super.key});

   final LoginPageController _loginPageController= Get.put(LoginPageController());

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
                  Center(
                    child:  Padding(
                      padding: EdgeInsets.only(
                        top: height*0.07
                      ),
                      child: Container(
                        height: height*0.06,
                        width: width*0.4,
                        child: AppLogo.logo,
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding:  EdgeInsets.only(
                          top: height*0.06
                      ),
                      child: CustomTextField(
                        label: 'Email',
                        controller: _loginPageController.emailController,
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
                        controller: _loginPageController.passwordController,
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
                          child: const Text('Login',style: TextStyle(fontFamily: 'Arial',fontSize: 22,color: Colors.white,fontWeight: FontWeight.w600),),
                          onPressed: (){
                             Get.to(TermsAndConditionsPage());
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      top: height*0.05,
                    ),
                    child: const Center(child: Text('Don\'t have an account?',style: TextStyle(fontFamily: 'Arial',fontSize: 18,fontWeight: FontWeight.w500))),
                  ),
                  Center(
                    child: TextButton(
                        onPressed: (){
                          Get.offAll(SignupPage());
                        },
                        child: Text('Sign up here',style: TextStyle(color: AppPrimaryColor.secondaryButtonColor,fontFamily: 'Arial',fontSize: 18,fontWeight: FontWeight.w600),)
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      top: height*0.03,
                    ),
                    child: const Center(child: Text('Check below to accept the',style: TextStyle(fontFamily: 'Arial',fontSize: 18,fontWeight: FontWeight.w500))),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      right: width*0.07,
                      left: width*0.07
                    ),
                    child: const Center(child: Text('Fifth Tenth Pays Terms & Conditions\n               and Privacy Policy',style: TextStyle(fontFamily: 'Arial',fontSize: 18,fontWeight: FontWeight.w500))),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                        top: height*0.05,
                        left: width*0.1,
                        right: width*0.09
                    ),
                    child: Row(
                      children: [
                        Transform.scale(
                          scale: 1.5,
                          child: Obx(() => Checkbox(
                            value: _loginPageController.isTermsAccepted.value,
                            onChanged: (bool? value) {
                              _loginPageController.isTermsAccepted.value = value!;
                            },
                            activeColor: AppPrimaryColor.primaryColor,
                            checkColor: Colors.white,
                          )),
                        ),
                        const Flexible(
                            child: Text('I accept Tenth Fifth Pays Terms and Conditions',style: TextStyle(fontFamily: 'Arial',fontSize: 18,fontWeight: FontWeight.w500)))
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                        top: height*0.01 ,
                        left: width*0.1,
                        right: width*0.09
                    ),
                    child: Row(
                      children: [
                        Transform.scale(
                          scale: 1.5,
                          child: Obx(() => Checkbox(
                            value: _loginPageController.isPrivacyAccepted.value,
                            onChanged: (bool? value) {
                              _loginPageController.isPrivacyAccepted.value = value!;
                            },
                            activeColor: AppPrimaryColor.primaryColor, // Filled color
                            checkColor: Colors.white, // Tick mark color
                          )),
                        ),
                        const Flexible(
                            child: Text('I accept Tenth Fifth Pays Privacy Policy',style: TextStyle(fontFamily: 'Arial',fontSize: 18,fontWeight: FontWeight.w500)))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height*0.06,
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}