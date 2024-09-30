import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tenth_fifth_pays/Controller/Transaction%20Details/transaction_details_controller.dart';
import 'package:tenth_fifth_pays/View/Send%20Money%20Page/send_money_page.dart';
import 'package:tenth_fifth_pays/View/Transaction%20Details/review_and_confirm_transaction.dart';
import '../Utils/colors.dart';
import '../Widgets/textfields.dart';

class TransactionDetailsPage extends StatelessWidget{
  TransactionDetailsPage({super.key});
  final transcController = Get.put(TransactionDetailsController());

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
                const Center(
                  child: Text("Transaction Details", style: TextStyle(fontFamily: 'Arial',fontSize: 24,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                      left: width*0.04,
                      top: height*0.05
                  ),
                  child: CustomTextField(
                    label: 'Recipient',
                    controller: transcController.recipientController,
                    textInputType: TextInputType.text,
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                    top: height*0.03,
                    left: width*0.04,
                  ),
                  child: CustomTextField(
                    label: 'Amount',
                    controller: transcController.amountController,
                    textInputType: TextInputType.number,
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                    top: height*0.03,
                    left: width*0.04,
                  ),
                  child: CustomTextField(
                    label: 'Transfer Date',
                    controller: transcController.dateController,
                    textInputType: TextInputType.number,
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                      left: width*0.04,
                      top: height*0.03
                  ),
                  child: CustomTextField(
                    label: 'Transfer Time',
                    controller: transcController.timeController,
                    textInputType: TextInputType.number,
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                    top: height*0.03,
                    left: width*0.04,
                  ),
                  child: CustomTextField(
                    label: '% Fee (15%)',
                    controller: transcController.percentageController,
                    textInputType: TextInputType.number,
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                    top: height*0.03,
                    left: width*0.04,
                  ),
                  child: CustomTextField(
                    label: 'Total Amount',
                    controller: transcController.totalAmountController,
                    textInputType: TextInputType.number,
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                    top: height*0.03,
                    left: width*0.04,
                    bottom: height*0.05,
                  ),
                  child: CustomTextField(
                    label: 'Payment Method',
                    controller: transcController.paymentMethodController,
                    textInputType: TextInputType.text,
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
                        child: const Text('Confirm Details',style: TextStyle(fontFamily: 'Arial',fontSize: 22,color: Colors.white,fontWeight: FontWeight.w600),),
                        onPressed: ()=> Get.to(()=> SendMoneyPage()),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5,),
                const ReviewAndConfirmTransaction(),
              ],
            ),
          ),
        ),
      ),
    );
  }

}