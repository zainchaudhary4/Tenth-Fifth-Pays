import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tenth_fifth_pays/View/Signup%20Page/signup_page.dart';
import 'package:tenth_fifth_pays/View/Utils/app_logo.dart';
import 'package:tenth_fifth_pays/View/Utils/colors.dart';
import 'package:get/get.dart';

class PrivacyPolicyPage extends StatefulWidget{
  @override
  State<PrivacyPolicyPage> createState() => _PrivacyPolicyPageState();
}

class _PrivacyPolicyPageState extends State<PrivacyPolicyPage> {

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
                    child: Text('Accept our Privacy Policy License',style: TextStyle(fontFamily: 'Arial',fontSize: 19,fontWeight: FontWeight.w600)),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      top: height*0.05,
                      left: width*0.04,
                    ),
                    child: Text('By using this app, you agree to our Privacy Policy.',style: TextStyle(fontFamily: 'Arial',fontSize: 14)),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      top: height*0.03,
                      left: width*0.04,
                    ),
                    child: Text('Privacy Policy for Tenth Fifth Pays App',style: TextStyle(fontFamily: 'Arial',fontSize: 14)),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      top: height*0.03,
                      left: width*0.04,
                    ),
                    child: Text('Effective Date: May 15, 2024',style: TextStyle(fontFamily: 'Arial',fontSize: 14)),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      left: width*0.04,
                      top: height*0.03
                    ),
                    child: Text('Introduction\nWelcome to the Tenth Fifth PaysApp. We are committed to protecting your privacy and personal information. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you use our app.\nInformation We Collect\nWe may collect the following types of information:\na) Personal Information: Name, address, phone number, and email. b) Financial Information: Account numbers and access permission. c) Usage Data: App interactions, features used, and time spent on the app. d) Device Information: Device type, operating system, and unique device identifiers.\nHow We Use Your Information\nWe use your information to:\na) Provide and improve our services b) Communicate with you c) Process payments d) Comply with legal and regulatory requirements\nInformation Sharing and Disclosure\nWe may share your information with:\na) Payment Gateway providers b) For billing purposes c) Service providers who assist in app operations d) Law enforcement or regulatory bodies when required by law\nData Security\nWe implement appropriate technical and organizational measures to protect your information. However, no method of transmission over the internet or electronic storage is 100% secure.\nYour Rights\nYou have the right to:\na) Access and update your personal information b) Request deletion of your data, subject to legal retention requirements c) Opt-out of certain data collection or use\nChanges to This Policy\nWe may update this Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page.\nContact Us\nIf you have any questions about this Privacy Policy, please contact us at:\nTenth Fifth Pays\nInfo@tenthfifthpays.com'
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
                            child: Text('I accept Tenth Fifth Pays Policies',style: TextStyle(fontFamily: 'Arial',fontSize: 14)))
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