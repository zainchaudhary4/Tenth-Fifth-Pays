import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tenth_fifth_pays/View/Refer%20A%20Friend%20Page/refer_a_friend_info_page.dart';
import 'package:tenth_fifth_pays/View/Transaction%20Details/transaction_details_page.dart';
import 'package:tenth_fifth_pays/View/Widgets/textfields.dart';
import '../Utils/colors.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return  Scaffold(
      body: SafeArea(
      child:Padding(
        padding:const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Tenth Fifth Pays\nMoney Transfers",textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Arial',fontSize: 24,fontWeight: FontWeight.w600),),
              const SizedBox(height: 50, width: 50, child: Placeholder(),),

              // _buildList(const Text("\$"), "Current Account Balance", controller, TextInputType.number),
              // _buildList(const Icon(Icons.person_2_outlined), "Choose Recipient", controller, TextInputType.text),
              // _buildList(const Text("\$"), "Amount to Send", controller, TextInputType.number),
              // _buildList(const Icon(Icons.calendar_month), "Date to Transfer", controller, TextInputType.number),
              // _buildList(const Icon(Icons.access_time), "Amount to Transfer", controller, TextInputType.number),

              Center(
                child: Padding(
                  padding:  EdgeInsets.only(
                      top: height*0.02,
                      bottom: height*0.02
                  ),
                  child: SizedBox(
                    height: height*0.06,
                    width: width*0.77,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppPrimaryColor.primaryColor
                      ),
                      child: const Text('Send Money',style: TextStyle(fontFamily: 'Arial',fontSize: 22,color: Colors.white,fontWeight: FontWeight.w600),),
                      onPressed: (){
                        Get.to(()=> TransactionDetailsPage());
                      },
                    ),
                  ),
                ),
              ),

              const Text("\nMaking Tenth Fifth Pays are Easy",style: TextStyle(fontFamily: 'Arial',fontSize: 18,fontWeight: FontWeight.w600),),
              const Text("1. Fund your Account\n 2.Select your Recipient\n 3. Enter Amount to Pay\n 4. Pick the Date to Transfer\n"
                "Pick the Time to Transfer\n 5. Click Send Money", style: TextStyle(fontFamily: 'Arial',fontSize: 16),),
              Center(
                child: Padding(
                  padding:  EdgeInsets.only(
                      top: height*0.02,
                      bottom: height*0.02
                  ),
                  child: SizedBox(
                    height: height*0.06,
                    width: width*0.77,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppPrimaryColor.primaryColor
                      ),
                      child: const Text('Refer a Friend for Benefits',style: TextStyle(fontFamily: 'Arial',fontSize: 19,color: Colors.white,fontWeight: FontWeight.w600),),
                      onPressed: (){
                        Get.to(()=> const ReferAFriendInfoPage());
                      },
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

  Widget _buildList(Widget widget, String label, TextEditingController controller, TextInputType textInputType){
    return ListTile(
      leading: widget,
      title: CustomTextField(label: label, controller: controller, textInputType: textInputType),
  );
}
}