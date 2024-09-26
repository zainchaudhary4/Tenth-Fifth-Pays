import 'package:flutter/material.dart';
import 'package:tenth_fifth_pays/View/Account%20Settings/manage_your_account.dart';
import 'package:tenth_fifth_pays/View/Account%20Settings/manage_your_connected_accounts.dart';
import 'package:tenth_fifth_pays/View/Account%20Settings/manage_your_payment_methods.dart';
import 'package:tenth_fifth_pays/View/Account%20Settings/update_your_personal_information.dart';
import '../Utils/colors.dart';
import '../Widgets/custom_toggle_button.dart';

class AccountSettingsPage extends StatelessWidget{
  const AccountSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(4),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Account Settings", style: TextStyle(fontFamily: 'Arial', fontSize: 24, fontWeight: FontWeight.bold),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text("Get updates via email", style: TextStyle(fontFamily: 'Arial', fontSize: 18, fontWeight: FontWeight.bold)),
                      CustomToggleButton(),
                    ],
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: const Text("Change Password", style: TextStyle(fontFamily: 'Arial', fontSize: 18, fontWeight: FontWeight.bold))),
                  GestureDetector(
                    onTap: (){},
                    child: const Text("Delete Account", style: TextStyle(fontFamily: 'Arial', fontSize: 18, fontWeight: FontWeight.bold))),
                  GestureDetector(
                    onTap: (){},
                    child: const Text("Logout", style: TextStyle(fontFamily: 'Arial', fontSize: 18, fontWeight: FontWeight.bold))),
                  const ManageYourAccount(),
                  const UpdateYourPersonalInformation(),
                  const ManageYourPaymentMethods(),
                  const ManageYourConnectedAccounts(),
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
                          child: const Text('Home',style: TextStyle(fontFamily: 'Arial',fontSize: 22,color: Colors.white,fontWeight: FontWeight.w600),),
                          onPressed: (){},
                        ),
                      ),
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
                          child: const Text('Change Password',style: TextStyle(fontFamily: 'Arial',fontSize: 22,color: Colors.white,fontWeight: FontWeight.w600),),
                          onPressed: (){},
                        ),
                      ),
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