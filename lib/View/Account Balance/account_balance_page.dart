import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tenth_fifth_pays/Controller/Account%20Balance/account_balance_controller.dart';
import '../Utils/colors.dart';
import '../Widgets/textfields.dart';

class AccountBalancePage extends StatelessWidget{
  AccountBalancePage({super.key});
  final accBlnController = Get.put(AccountBalanceController());
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Center(child: Text("Transaction Details", style: TextStyle(fontFamily: 'Arial',fontSize: 24,fontWeight: FontWeight.bold),),),
                Padding(
                  padding:  EdgeInsets.only(
                      left: width*0.04,
                      top: height*0.05
                  ),
                  child: CustomTextField(
                    label: 'Current Balance',
                    controller: accBlnController.currentBalController,
                    textInputType: TextInputType.text,
                  ),),
                Padding(
                  padding:  EdgeInsets.only(
                    top: height*0.03,
                    left: width*0.04,
                    bottom: height*0.05,
                  ),
                  child: CustomTextField(
                    label: 'Transaction History',
                    controller: accBlnController.transcHistoryController,
                    textInputType: TextInputType.text,
                  ),),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}