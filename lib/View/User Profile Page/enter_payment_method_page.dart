import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tenth_fifth_pays/Controller/User%20Profile%20Page/user_profile_controller.dart';
import 'package:get/get.dart';
import '../Utils/colors.dart';
import '../Widgets/textfields.dart';

class EnterPaymentMethodPage extends StatefulWidget{
  @override
  State<EnterPaymentMethodPage> createState() => _EnterPaymentMethodPageState();
}

class _EnterPaymentMethodPageState extends State<EnterPaymentMethodPage> {

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
          child: Text('Enter Payment Method',style: TextStyle(fontFamily: 'Arial',fontSize: 19,fontWeight: FontWeight.w600)),
        ),
        Padding(
          padding:  EdgeInsets.only(
            top: height*0.02,
            left: width*0.04,
          ),
          child: Text('Select only 1',style: TextStyle(fontFamily: 'Arial',fontSize: 19,)),
        ),
        Padding(
          padding:  EdgeInsets.only(
              left: width*0.04,
              top: height*0.03
          ),
          child: CustomTextField(
            label: 'Name on Acct/Card',
            controller: _userProfileController.accNameController,
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
            label: 'Acct/Card Number',
            controller: _userProfileController.accNumController,
            obscureText: false,
            textInputType: TextInputType.number,
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(
            top: height*0.02,
            left: width*0.04,
          ),
          child: Text('Expiry Date',style: TextStyle(fontFamily: 'Arial',fontSize: 14,fontWeight: FontWeight.w600),),
        ),
        Padding(
            padding:  EdgeInsets.only(
              top: height*0.02,
              left: width*0.04,
            ),
            child: Container(
              width: width*0.24,
              child: TextField(
                controller: _userProfileController.expDateController,
                decoration: InputDecoration(
                  hintText: '19/25',
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