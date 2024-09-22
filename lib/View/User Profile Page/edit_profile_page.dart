import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tenth_fifth_pays/Controller/User%20Profile%20Page/user_profile_controller.dart';
import 'package:get/get.dart';
import '../Widgets/textfields.dart';

class EditProfilePage extends StatefulWidget{
  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {

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
            child: Text('Edit Profile',style: TextStyle(fontFamily: 'Arial',fontSize: 19,fontWeight: FontWeight.w600)),
          ),
          Padding(
            padding:  EdgeInsets.only(
                left: width*0.04,
                top: height*0.03
            ),
            child: CustomTextField(
              label: 'Email',
              controller: _userProfileController.emailController,
              obscureText: false,
              textInputType: TextInputType.emailAddress,
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(
              top: height*0.02,
              left: width*0.04,
            ),
            child: CustomTextField(
              label: 'Phone Number',
              controller: _userProfileController.phonenumController,
              obscureText: false,
              textInputType: TextInputType.number,
            ),
          ),
        ],
      );
  }
}