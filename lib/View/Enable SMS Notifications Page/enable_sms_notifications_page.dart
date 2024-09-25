import 'package:flutter/material.dart';
import 'package:tenth_fifth_pays/View/Photographic%20Release%20Page/photographic_release_page.dart';
import 'package:tenth_fifth_pays/View/Utils/colors.dart';
import 'package:get/get.dart';
import '../Utils/app_logo.dart';

class EnableSmsNotificationsPage extends StatelessWidget{

  const EnableSmsNotificationsPage({super.key});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: height*0.06,
                    width: width*0.4,
                    child: AppLogo.logo,
                  ),
                  const Center(
                    child: Text("Enable SMS Notifications",
                        style: TextStyle(fontFamily: 'Arial',fontSize: 28,fontWeight: FontWeight.w600),),
                  ),
                  SizedBox(height: height*0.1,),
                  Padding(
                    padding:  EdgeInsets.only(
                        left: width*0.04
                    ),
                    child: const Text("SMS notifications are used to process and provide updates on your order. "
                        "They are required to allow App to function properly.",
                        style: TextStyle(fontFamily: 'Arial',fontSize: 18,fontWeight: FontWeight.w500)),
                  ),
                  SizedBox(height: height*0.25,),
                  Center(
                    child: Padding(
                      padding:  EdgeInsets.only(
                          top: height*0.04
                      ),
                      child: SizedBox(
                        height: height*0.06,
                        width: width*0.77,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppPrimaryColor.primaryColor
                          ),
                          child: Text('Enable',style: TextStyle(fontFamily: 'Arial',fontSize: 22,color: Colors.white,fontWeight: FontWeight.w600),),
                          onPressed: (){
                             Get.to(PhotographicReleasePage());
                          },
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
                          child: Text('Don\'t Enable (Exists)',style: TextStyle(fontFamily: 'Arial',fontSize: 22,color: Colors.white,fontWeight: FontWeight.w600),),
                          onPressed: (){
                            // Get.to(EnableSmsNotificationsPage());
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height*0.1,),
                ],
              ),
            ),
          )
      ),
    );
  }

}