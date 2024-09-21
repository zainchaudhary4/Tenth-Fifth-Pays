import 'package:flutter/material.dart';
import 'package:tenth_fifth_pays/View/Utils/colors.dart';

class EnableSmsNotificationsPage extends StatelessWidget{
  const EnableSmsNotificationsPage({super.key});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width*0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Enable SMS Notifications",
                  textAlign: TextAlign.center,
                  style: (TextStyle(fontSize: 26, fontWeight: FontWeight.w900)),),
                SizedBox(height: height*0.1,),
                const Text("SMS notifications are used to process and provide updates on your order. "
                    "They are required to allow App to function properly.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22),),
                SizedBox(height: height*0.25,),
                ElevatedButton(
                    onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppPrimaryColor.primaryColor
                  ),
                  child: Text("Enable",
                    style: TextStyle(color: AppPrimaryColor.secondaryButtonColor,fontFamily: 'Arial', fontSize: 22),
                    ),
                ),
                SizedBox(height: height*0.01,),
                ElevatedButton(
                    onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppPrimaryColor.primaryColor
                  ),
                  child: Text("Don't Enable (Exists)",
                      style: TextStyle(color: AppPrimaryColor.secondaryButtonColor,fontFamily: 'Arial', fontSize: 22)
                    ),
                ),
                SizedBox(height: height*0.1,),
              ],
            ),
          )
      ),
    );
  }

}