import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tenth_fifth_pays/Controller/User%20Profile%20Page/user_profile_controller.dart';
import 'package:get/get.dart';
import '../Utils/colors.dart';
import '../Widgets/textfields.dart';

class UserInformationPage extends StatefulWidget{
  @override
  State<UserInformationPage> createState() => _UserInformationPageState();
}

class _UserInformationPageState extends State<UserInformationPage> {

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
          child: Text('User Information',style: TextStyle(fontFamily: 'Arial',fontSize: 19,fontWeight: FontWeight.w600)),
        ),
        Padding(
          padding:  EdgeInsets.only(
              left: width*0.04,
              top: height*0.03
          ),
          child: CustomTextField(
            label: 'First Name',
            controller: _userProfileController.fNameController,
            obscureText: false,
            textInputType: TextInputType.text,
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(
            top: height*0.02,
            left: width*0.04,
          ),
          child: CustomTextField(
            label: 'Last Name',
            controller: _userProfileController.lNameController,
            obscureText: false,
            textInputType: TextInputType.text,
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(
            top: height*0.02,
            left: width*0.04,
          ),
          child: Text('Date of Birth',style: TextStyle(fontFamily: 'Arial',fontSize: 14,fontWeight: FontWeight.w600),),
        ),
        Padding(
          padding:  EdgeInsets.only(
            top: height*0.02,
            left: width*0.04,
          ),
          child: Row(
            children: [
              Container(
                width: width*0.24,
                child: TextField(
                   controller: _userProfileController.monthController,
                  decoration: InputDecoration(
                    hintText: 'Month',
                    hintStyle: TextStyle(fontSize: 14),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                            color: AppPrimaryColor.primaryColor,
                            width: 2
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 1.5
                        )
                    ),

                  ),

                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: width*0.02
                ),
                child: Container(
                  width: width*0.15,
                  child: TextField(
                     controller: _userProfileController.dayController,
                    decoration: InputDecoration(
                      hintText: 'Day',
                      hintStyle: TextStyle(fontSize: 14),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                              color: AppPrimaryColor.primaryColor,
                              width: 2
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                              color: Colors.grey,
                              width: 1.5
                          )
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: width*0.02
                ),
                child: Container(
                  width: width*0.18,
                  child: TextField(
                     controller: _userProfileController.yearController,
                    decoration: InputDecoration(
                      hintText: 'Year',
                      hintStyle: TextStyle(fontSize: 14),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                              color: AppPrimaryColor.primaryColor,
                              width: 2
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                              color: Colors.grey,
                              width: 1.5
                          )
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ),
      ],
    );
  }
}