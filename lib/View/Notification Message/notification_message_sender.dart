import'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Utils/colors.dart';

class NotificationMessageSender extends StatelessWidget{
  const NotificationMessageSender({super.key});

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
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("Apple Pay\n\n"
                    "Your payment has been received\n\n"
                    "\$20.00 sent to John Doe has been successfully clamied.\n\n", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 150),
                child: GestureDetector(
                    onTap: (){},
                    child: const Text("Tap here for details\n\n", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),)),
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