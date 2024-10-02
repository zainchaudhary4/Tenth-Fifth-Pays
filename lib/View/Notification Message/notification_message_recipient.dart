import'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Utils/colors.dart';

class NotificationMessageRecipient extends StatelessWidget{
  const NotificationMessageRecipient({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("Notification Message Recipient Receives", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
              ),
              const SizedBox(height: 70,),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xffD4AF37),
                          width: 3
                      ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black,
                          width: 2
                      ),
                    ),
                    child: const Text("Apple Pay\n\n"
                        "You’ve received money!\n\n"
                        "\$20.00\n\n"
                        "From: Tenth Fifth\n\n"
                        "”[Custom message from sender]”", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding:  EdgeInsets.only(
                      top: height*0.1
                  ),
                  child: SizedBox(
                    height: height*0.06,
                    width: width*0.77,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppPrimaryColor.primaryColor
                      ),
                      child: const Text('Close',style: TextStyle(fontFamily: 'Arial',fontSize: 22,color: Colors.white,fontWeight: FontWeight.w600),),
                      onPressed: ()=> Get.back(),
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