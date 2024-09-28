import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tenth_fifth_pays/Controller/Deactivate%20Account/deactivate_account_controller.dart';
import '../Contacts And Favourites And Pics Page/contacts_and_favourites_page.dart';
import '../Utils/colors.dart';
import '../Widgets/textfields.dart';

class DeactivateAccountPage extends StatelessWidget{
  const DeactivateAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final accountController = DeactivateAccountController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Deactivate Account", style: TextStyle(fontFamily: "Arial", fontSize: 24, fontWeight: FontWeight.bold)),
              SingleChildScrollView(
                child: Column(
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
                        controller: accountController.emailController,
                        obscureText: true,
                        textInputType: TextInputType.emailAddress,
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(
                        top: height*0.03,
                        left: width*0.04,
                      ),
                      child: CustomTextField(
                        label: 'Enter New Password',
                        controller: accountController.newPassController,
                        obscureText: true,
                        textInputType: TextInputType.visiblePassword,
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(
                        top: height*0.03,
                        left: width*0.04,
                        bottom: height*0.05,
                      ),
                      child: CustomTextField(
                        label: 'Re-Enter New Password',
                        controller: accountController.reEnterPassController,
                        obscureText: true,
                        textInputType: TextInputType.visiblePassword,
                      ),
                    ),
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
                      child: const Text('Deactivate Account',style: TextStyle(fontFamily: 'Arial',fontSize: 22,color: Colors.white,fontWeight: FontWeight.w600),),
                      onPressed: (){},
                    ),
                  ),
                ),
              ),
              const Text("\nConfirm that you wish to deactivate your account.\n", style: TextStyle(fontFamily: "Arial", fontSize: 18, fontWeight: FontWeight.bold)),
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
                      child: const Text('Confirm Deactivate Account',style: TextStyle(fontFamily: 'Arial',fontSize: 18,color: Colors.white,fontWeight: FontWeight.w600),),
                      onPressed: ()=> Get.to(()=> ContactsAndFavouritesPage()),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}