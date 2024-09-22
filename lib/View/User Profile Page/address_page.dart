import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tenth_fifth_pays/Controller/User%20Profile%20Page/user_profile_controller.dart';
import 'package:get/get.dart';
import '../Utils/colors.dart';
import '../Widgets/textfields.dart';

class AddressPage extends StatefulWidget{
  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {

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
          child: Text('Address',style: TextStyle(fontFamily: 'Arial',fontSize: 19,fontWeight: FontWeight.w600)),
        ),
        Padding(
          padding:  EdgeInsets.only(
              left: width*0.04,
              top: height*0.03
          ),
          child: CustomTextField(
            label: 'Street',
            controller: _userProfileController.streetController,
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
            label: 'City',
            controller: _userProfileController.cityController,
            obscureText: false,
            textInputType: TextInputType.text,
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(
              top: height*0.02,
              left: width*0.04
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('State',style: TextStyle(fontFamily: 'Arial',fontSize: 14,fontWeight: FontWeight.w600),),
                  Padding(
                    padding: EdgeInsets.only(
                        top: height*0.02
                    ),
                    child: Container(
                      width: width*0.16,
                      child: TextField(
                        controller: _userProfileController.stateController,
                        decoration: InputDecoration(
                          hintText: 'CA',
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
              ),
              SizedBox(width: width*0.2,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ZIP',style: TextStyle(fontFamily: 'Arial',fontSize: 14,fontWeight: FontWeight.w600),),
                  Padding(
                    padding: EdgeInsets.only(
                        top: height*0.02
                    ),
                    child: Container(
                      width: width*0.24,
                      child: TextField(
                        controller: _userProfileController.zipController,
                        decoration: InputDecoration(
                          hintText: '99999',
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
            ],
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(
            top: height*0.05,
            left: width*0.04,
          ),
          child: Text('Currency',style: TextStyle(fontFamily: 'Arial',fontSize: 14,fontWeight: FontWeight.w600),),
        ),
        Padding(
            padding:  EdgeInsets.only(
              top: height*0.02,
              left: width*0.04,
            ),
            child: Container(
              width: width*0.24,
              child: TextField(
                controller: _userProfileController.currencyController,
                decoration: InputDecoration(
                  hintText: 'USD',
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
            )
        ),
      ],
    );
  }
}