import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tenth_fifth_pays/View/User%20Profile%20Page/user_profile_page.dart';
import 'package:tenth_fifth_pays/View/Utils/app_logo.dart';
import 'package:tenth_fifth_pays/View/Utils/colors.dart';
import 'package:get/get.dart';


class OnboardingPage extends StatelessWidget{
  OnboardingPage({super.key,});

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
                        child: Image.asset('assets/images/Onboarding.png'),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      top: height*0.05,
                    ),
                    child: Center(child: Text('Onboarding',style: TextStyle(fontFamily: 'Arial',fontSize: 28,fontWeight: FontWeight.w600))),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      top: height*0.02,
                    ),
                    child: Center(child: Text('Complete the following',style: TextStyle(fontFamily: 'Arial',fontSize: 20,fontWeight: FontWeight.w600))),
                  ),
                  Center(
                      child: Text('onboarding process to get',style: TextStyle(fontFamily: 'Arial',fontSize: 20,fontWeight: FontWeight.w600))),
                  Center(
                      child: Text('  started',style: TextStyle(fontFamily: 'Arial',fontSize: 20,fontWeight: FontWeight.w600))),
                  Center(
                    child: Padding(
                      padding:  EdgeInsets.only(
                          top: height*0.15
                      ),
                      child: SizedBox(
                        height: height*0.06,
                        width: width*0.77,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppPrimaryColor.primaryColor
                          ),
                          child: Text('Next',style: TextStyle(fontFamily: 'Arial',fontSize: 22,color: Colors.white,fontWeight: FontWeight.w600),),
                          onPressed: (){
                            Get.to(UserProfilePage());
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: height*0.18
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Copyright ',style: TextStyle(fontFamily: 'Arial',fontWeight: FontWeight.w500,fontSize: 14),),
                        Icon(Icons.copyright,size: 16,),
                        Text(' 2024 Deee-Deee Inc',style: TextStyle(fontFamily: 'Arial',fontWeight: FontWeight.w500,fontSize: 14),),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}