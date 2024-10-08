import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tenth_fifth_pays/View/Request%20Support/request_support_page.dart';
import '../../Controller/Change Password Controller/change_password_controller.dart';
import '../Utils/colors.dart';
import '../Widgets/textfields.dart';

class ChangePasswordPage extends StatelessWidget{
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final passController = ChangePasswordController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Change Password", style: TextStyle(fontFamily: 'Arial', fontSize: 24, fontWeight: FontWeight.bold)),
                const SizedBox(height: 20,),
                const Text("Update your password for added security", style: TextStyle(fontFamily: 'Arial',  fontSize: 18, fontWeight: FontWeight.bold),),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(
                          left: width*0.04,
                          top: height*0.05
                      ),
                      child: CustomTextField(
                        label: 'Enter Current Password',
                        controller: passController.currentPassController,
                        obscureText: true,
                        textInputType: TextInputType.visiblePassword,
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(
                        top: height*0.03,
                        left: width*0.04,
                      ),
                      child: CustomTextField(
                        label: 'Enter New Password',
                        controller: passController.newPassController,
                        obscureText: true,
                        textInputType: TextInputType.visiblePassword,
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(
                        top: height*0.03,
                        left: width*0.04,
                        bottom: height*0.05
                      ),
                      child: CustomTextField(
                        label: 'Re-Enter New Password',
                        controller: passController.reEnterPassController,
                        obscureText: true,
                        textInputType: TextInputType.visiblePassword,
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
                        child: const Text('Submit',style: TextStyle(fontFamily: 'Arial',fontSize: 22,color: Colors.white,fontWeight: FontWeight.w600),),
                        onPressed: ()=> Get.to(()=> const RequestSupportPage())
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