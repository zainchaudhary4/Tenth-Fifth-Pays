import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tenth_fifth_pays/Controller/Send%20Money/send_money_controller.dart';
import 'package:tenth_fifth_pays/View/Account%20Balance/account_balance_page.dart';
import '../Utils/colors.dart';
import '../Widgets/textfields.dart';

class SendMoneyPage extends StatelessWidget{
  SendMoneyPage({super.key});
  final moneyController = Get.put(SendMoneyController());

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
              const Text("Send Money", style: TextStyle(fontFamily: 'Arial',fontSize: 24,fontWeight: FontWeight.bold),),
              Padding(
                padding:  EdgeInsets.only(
                    left: width*0.04,
                    top: height*0.05
                ),
                child: CustomTextField(
                  label: 'Send Money to',
                  controller: moneyController.recipientController,
                  textInputType: TextInputType.text,
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(
                  top: height*0.03,
                  left: width*0.04,
                ),
                child: CustomTextField(
                  label: 'Total Amount (Includes \$2.50 fee)',
                  controller: moneyController.totalAmountController,
                  textInputType: TextInputType.number,
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(
                  top: height*0.03,
                  left: width*0.04,
                ),
                child: CustomTextField(
                  label: 'Pay With',
                  controller: moneyController.paymentMethodController,
                  textInputType: TextInputType.text,
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(
                  top: height*0.03,
                  left: width*0.04,
                  bottom: height*0.05,
                ),
                child: CustomTextField(
                  label: 'Send',
                  controller: moneyController.amountController,
                  textInputType: TextInputType.text,
                ),
              ),
              const Center(child: Text("By tapping Send, you agree to the Terms of Service and Privacy Policy.", style: TextStyle(fontFamily: 'Arial',fontSize: 18,))),
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
                      child: const Text('Send',style: TextStyle(fontFamily: 'Arial',fontSize: 22,color: Colors.white,fontWeight: FontWeight.w600),),
                      onPressed: ()=> Get.to(()=> AccountBalancePage()),
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