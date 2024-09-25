import 'package:flutter/material.dart';
import 'package:tenth_fifth_pays/Controller/Change%20Phone%20Number/phone_number_controller.dart';
import '../Utils/colors.dart';
import '../Widgets/textfields.dart';

class ChangePhoneNumberPage extends StatelessWidget{
  const ChangePhoneNumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final _phoneNumberController = PhoneNumberController();
    return Scaffold(
        body: SafeArea(
        child: Padding(
        padding: const EdgeInsets.all(4),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Change Phone Number", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                const Text("Update your phone number for added security"),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(
                          left: width*0.04,
                          top: height*0.03
                      ),
                      child: CustomTextField(
                        label: 'Enter Current Phone Number',
                        controller: _phoneNumberController.currentPhoneNumController,
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
                        label: 'Enter New Phone Number',
                        controller: _phoneNumberController.newPhoneNumController,
                        obscureText: false,
                        textInputType: TextInputType.text,
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(
                        top: height*0.01,
                        left: width*0.05,
                      ),
                      child: CustomTextField(
                        label: 'Re-Enter New Phone Number',
                        controller: _phoneNumberController.reEnterPhoneNumController,
                        obscureText: false,
                        textInputType: TextInputType.text,
                      ),
                    ),
                  ],
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
                        child: const Text('Change Phone Number',style: TextStyle(fontFamily: 'Arial',fontSize: 22,color: Colors.white,fontWeight: FontWeight.w600),),
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