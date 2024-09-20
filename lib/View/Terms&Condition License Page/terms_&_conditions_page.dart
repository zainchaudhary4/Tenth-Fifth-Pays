import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tenth_fifth_pays/View/Privacy%20Policy%20License%20Page/privacy_policy_page.dart';
import 'package:tenth_fifth_pays/View/Utils/app_logo.dart';
import 'package:tenth_fifth_pays/View/Utils/colors.dart';
import 'package:get/get.dart';

class TermsAndConditionsPage extends StatefulWidget{
  @override
  State<TermsAndConditionsPage> createState() => _TermsAndConditionsPageState();
}

class _TermsAndConditionsPageState extends State<TermsAndConditionsPage> {

  bool isTermsAccepted= false;
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
                    child: Text('Accept our Terms and Conditions',style: TextStyle(fontFamily: 'Arial',fontSize: 19,fontWeight: FontWeight.w600)),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      top: height*0.05,
                      left: width*0.04,
                    ),
                    child: Text('By using this app, you agree to our Terms and Conditions for the Tenth Fifth Pays App',style: TextStyle(fontFamily: 'Arial',fontSize: 14)),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                        top: height*0.03,
                      left: width*0.04,
                    ),
                    child: Text('Effective Date: August 15, 2024',style: TextStyle(fontFamily: 'Arial',fontSize: 14)),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      top: height*0.03,
                      left: width*0.04,
                    ),
                    child: Text('Acceptance of terms',style: TextStyle(fontFamily: 'Arial',fontSize: 14)),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      left: width*0.04,
                    ),
                    child: Text('By downloading, installing, or using the Tenth Fifth Pays App ("the App"), you agree to be bound by these Terms and Conditions. If you do not agree to these terms, do not use the App.\nService Description\nTenth Fifth Pays provides Peer to Peer (P2P) payment services through this App. The App facilitates communication, payments, and information sharing between App users.\nUser Accounts\n3.1 You must create an account to use the App. You are responsible for maintaining the confidentiality of your account information.\n3.2 You agree to provide accurate, current, and complete information during registration and to update such information to keep it accurate, current, and complete.\nUser Responsibilities\n4.1 You agree to use the App only for lawful purposes and in accordance with these Terms.\n4.2 You are responsible for all activity that occurs under your account.\n4.3 You agree not to misuse, interfere with, or exploit the App or its services.\nFinancial Advice\n5.1 The App does not provide financial advice. All financial decisions should be made in consultation with financial professionals.\n5.2 Information provided through the App is for informational purposes only and should not be considered a substitute for professional financial advice.\nPrivacy\nYour use of the App is also governed by our Privacy Policy, which is incorporated into these Terms by reference.\nIntellectual Property\n7.1 The App and its original content, features, and functionality are owned by Tenth Fifth Pays and are protected by international copyright, trademark, patent, trade secret, and other intellectual property laws.\n7.2 You may not copy, modify, create derivative works of, publicly display, publicly perform, republish, download, or store any of the material on our App without prior written consent.\nLimitation of Liability\nTo the fullest extent permitted by applicable law, Tenth Fifth Pays shall not be liable for any indirect, incidental, special, consequential, or punitive damages, or any loss of profits or revenues.\nTermination\nWe may terminate or suspend your account and bar access to the App immediately, without prior notice or liability, under our sole discretion, for any reason whatsoever and without limitation.\nChanges to Terms\nWe reserve the right to modify or replace these Terms at any time. We will provide notice of any material changes to the Terms.\nGoverning Law\nThese Terms shall be governed and construed in accordance with the laws of the state of Nevada, without regard to its conflict of law provisions.\nContact Us\nIf you have any questions about this Privacy Policy, please contact Tenth Fifth Pays at: Info@TenthFifthPays.com'
                        ,style: TextStyle(fontFamily: 'Arial',fontSize: 14)),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                        top: height*0.05,
                        left: width*0.02,
                    ),
                    child: Row(
                      children: [
                        Transform.scale(
                          scale: 1.5,
                          child:  Checkbox(
                            value: isTermsAccepted,
                            onChanged: (bool? value) {
                              setState(() {
                                isTermsAccepted = value!;
                              });

                            },
                            activeColor: AppPrimaryColor.primaryColor,
                            checkColor: Colors.white,
                          ),
                        ),
                        Flexible(
                            child: Text('I accept Tenth Fifth Pays Terms and Conditions',style: TextStyle(fontFamily: 'Arial',fontSize: 14)))
                      ],
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
                          child: Text('Next',style: TextStyle(fontFamily: 'Arial',fontSize: 22,color: Colors.white,fontWeight: FontWeight.w600),),
                          onPressed: (){
                            Get.to(PrivacyPolicyPage());
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