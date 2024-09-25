import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tenth_fifth_pays/View/Enable%20SMS%20Notifications%20Page/enable_sms_notifications_page.dart';
import 'package:tenth_fifth_pays/View/User%20Profile%20Page/address_page.dart';
import 'package:tenth_fifth_pays/View/User%20Profile%20Page/contact_support_page.dart';
import 'package:tenth_fifth_pays/View/User%20Profile%20Page/edit_profile_page.dart';
import 'package:tenth_fifth_pays/View/User%20Profile%20Page/enter_payment_method_page.dart';
import 'package:tenth_fifth_pays/View/User%20Profile%20Page/user_information_page.dart';
import 'package:tenth_fifth_pays/View/Utils/app_logo.dart';
import 'package:get/get.dart';
import '../Utils/colors.dart';

class UserProfilePage extends StatelessWidget{

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
                    child: Text('User Profile Setup',style: TextStyle(fontFamily: 'Arial',fontSize: 19,fontWeight: FontWeight.w600)),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      top: height*0.03,
                      left: width*0.04,
                    ),
                    child: Text('Add Profile Picture',style: TextStyle(fontFamily: 'Arial',fontSize: 19,fontWeight: FontWeight.w600)),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      left: width*0.06,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Click on Picture to \n    Upload Photo',style: TextStyle(fontFamily: 'Arial',fontSize: 19)),
                        Padding(
                          padding: EdgeInsets.only(
                              left: width*0.2,
                          ),
                          child: GestureDetector(
                            child: Container(
                              height: height*0.08,
                               width: width*0.16,
                              child: Image.asset('assets/images/User 1.png',color: Colors.black,),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.black,width: 1.5)
                              ),
                            ),
                            onTap: (){

                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  EditProfilePage(),
                  UserInformationPage(),
                  AddressPage(),
                  EnterPaymentMethodPage(),
                  ContactSupportPage(),
                  Center(
                    child: Padding(
                      padding:  EdgeInsets.only(
                          top: height*0.04
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
                             Get.to(EnableSmsNotificationsPage());
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