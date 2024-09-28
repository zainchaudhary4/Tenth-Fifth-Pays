import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tenth_fifth_pays/Controller/Refer%20A%20Friend/refer_a_friend_controller.dart';
import 'package:tenth_fifth_pays/View/Widgets/textfields.dart';

import '../Utils/colors.dart';
class ReferAFriendSubmitPage extends StatelessWidget{
  const ReferAFriendSubmitPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final referralController = Get.put(ReferAFriendController());
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(child: Text("Refer and Earn", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),)),
                  SizedBox(height: height*0.05,),
                  const Text("Enter Your Friend's Contact Information",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  SizedBox(height: height*0.05,),
                  Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(
                            left: width*0.04,
                            top: height*0.05
                        ),
                        child: CustomTextField(
                          label: 'Name',
                          controller: referralController.nameController,
                          textInputType: TextInputType.text,
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(
                          top: height*0.03,
                          left: width*0.04,
                        ),
                        child: CustomTextField(
                          label: 'Email',
                          controller: referralController.emailController,
                          textInputType: TextInputType.emailAddress,
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(
                          top: height*0.03,
                          left: width*0.04,
                        ),
                        child: CustomTextField(
                          label: 'Phone',
                          controller: referralController.phoneController,
                          textInputType: TextInputType.phone,
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(
                            left: width*0.04,
                            top: height*0.03,
                            bottom: height*0.05,
                        ),
                        child: CustomTextField(
                          label: 'Message',
                          controller: referralController.messageController,
                          textInputType: TextInputType.text,
                        ),
                      ),
                    ],
                  ),
                Center(
                  child: Padding(
                    padding:  EdgeInsets.only(
                        top: height*0.02,
                        bottom: height*0.02
                    ),
                    child: SizedBox(
                      height: height*0.06,
                      width: width*0.77,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppPrimaryColor.primaryColor
                        ),
                        child: const Text('Make Referral',style: TextStyle(fontFamily: 'Arial',fontSize: 22,color: Colors.white,fontWeight: FontWeight.w600),),
                        onPressed: (){},
                      ),
                    ),
                  ),
                ),
                ],
              ),
            ),
          ),
      ),
    );
  }

}