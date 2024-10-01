import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../Utils/colors.dart';

class OrderConfirmationPage extends StatelessWidget{
  const OrderConfirmationPage({super.key});

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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Center(child: Text("Order Confirmation\n", style: TextStyle(fontFamily: 'Arial',fontSize: 24,fontWeight: FontWeight.bold),)),
                  const Center(child: Text("Payment Successful!\n", style: TextStyle(fontFamily: 'Arial',fontSize: 24,fontWeight: FontWeight.bold),)),
                  const Text("You've sent: \$20.00", style: TextStyle(fontFamily: 'Arial',fontSize: 18,),),
                  const Text("To: John Doe\n\n", style: TextStyle(fontFamily: 'Arial',fontSize: 18,),),
                  const Text("Transaction Details\n", style: TextStyle(fontFamily: 'Arial',fontSize: 18,),),
                  const Text("Transfer Date: 9/1/2024", style: TextStyle(fontFamily: 'Arial',fontSize: 18,),),
                  const Text("Transfer Time: 2:30 AM", style: TextStyle(fontFamily: 'Arial',fontSize: 18,),),
                  const Text("Paid via: Apple Pay", style: TextStyle(fontFamily: 'Arial',fontSize: 18,),),
                  const Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Amount Sent:", style: TextStyle(fontFamily: 'Arial',fontSize: 18,),),
                          Text("\$20.00", style: TextStyle(fontFamily: 'Arial',fontSize: 18,),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Service Fee:", style: TextStyle(fontFamily: 'Arial',fontSize: 18,),),
                          Text("\$2.50", style: TextStyle(fontFamily: 'Arial',fontSize: 18,),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total Charged:", style: TextStyle(fontFamily: 'Arial',fontSize: 18,),),
                          Text("\$22.50", style: TextStyle(fontFamily: 'Arial',fontSize: 18,),),
                        ],
                      ),
                    ],
                  ),
                  const Text("Transaction ID: 123456789\n", style: TextStyle(fontFamily: 'Arial',fontSize: 18,),),
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
                          onPressed: ()=> Get.to(()=> const OrderConfirmationPage()),
                        ),
                      ),
                    ),
                  ),
                ]
            ),
          ),
        ),
      ),
    );
  }
}


