import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tenth_fifth_pays/Controller/User%20Profile%20Page/user_profile_controller.dart';
import 'package:get/get.dart';


class ContactSupportPage extends StatefulWidget{
  @override
  State<ContactSupportPage> createState() => _ContactSupportPageState();
}

class _ContactSupportPageState extends State<ContactSupportPage> {

  UserProfileController _userProfileController = Get.put(UserProfileController());

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:  EdgeInsets.only(
            top: height*0.03,
            left: width*0.04,
          ),
          child: Text('Contact Support',style: TextStyle(fontFamily: 'Arial',fontSize: 19,fontWeight: FontWeight.w600)),
        ),
        Padding(
          padding:  EdgeInsets.only(
              left: width*0.04,
              top: height*0.02
          ),
          child: Text('If you have any questions or need assistance, please reach out to our support team',style: TextStyle(fontFamily: 'Arial',fontSize: 16),)
        ),
        Padding(
          padding:  EdgeInsets.only(
            top: height*0.03,
            left: width*0.04,
          ),
          child: Text('Email',style: TextStyle(fontFamily: 'Arial',fontSize: 19,fontWeight: FontWeight.w600)),
        ),
        Padding(
            padding:  EdgeInsets.only(
                left: width*0.04,
                top: height*0.02
            ),
            child: Text('Send us an email\ninfo@tenthfifthpays.com',style: TextStyle(fontFamily: 'Arial',fontSize: 16),)
        ),
      ],
    );
  }
}