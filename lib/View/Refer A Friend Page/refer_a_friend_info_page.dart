import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Utils/colors.dart';
import 'refer_a_friend_submit_page.dart';

class ReferAFriendInfoPage extends StatelessWidget{
  const ReferAFriendInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width*0.05),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Refer a Friend and Get 25% off your next Tenth Fifth Pay!",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const Text("\nIntroduce your friends to Tenth Fifth Pays and get rewarded!\n\n"
                      "When your friend completes their first transaction, you'll receive a 25% discount on your next one!\n\n"
                      "Limited time offer. Make your referrals within 10 days of your latest transaction to get your full discount.\n",
                    style: TextStyle(fontSize: 18),
                  ),
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
                          child: const Text('Invite Friends Now',style: TextStyle(fontFamily: 'Arial',fontSize: 22,color: Colors.white,fontWeight: FontWeight.w600),),
                          onPressed: (){},
                        ),
                      ),
                    ),
                  ),
                  const Text("\nRefer Friends and you both get rewarded!",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const Text("\nIntroduce your friends to Tenth Fifth Pays and enjoy benefits through our referral program\n",
                    style: TextStyle(fontSize: 18),
                  ),
                  const Text("Program Details:\n",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const Text("1. Refer a friend\n 2. They complete a transaction \n 3. You earn rewards*\n",
                    style: TextStyle(fontSize: 18),
                  ),
                  const Text("* Your rewards:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const Text("25% discount after friend’s 1st use\n",
                    style: TextStyle(fontSize: 18),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: height*0.05),
                    height: height*0.4,
                    width: width,
                    child: const Placeholder(),
                  ),
                  const Text("\nRefer and Earn",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const Text("\nStart Referring Today!", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  const Text("\nDon’t miss out on earning fun rewards.\n", style: TextStyle(fontSize: 18),),
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
                            Get.to(()=> const ReferAFriendSubmitPage());
                          },
                        ),
                      ),
                    ),
                  ),
                  const Text("\nNeed More Information?\n",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Text("Email Us\n",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const Text("Send us a message today!\n", style: TextStyle(fontSize: 18),),
                  const Text("info@tenthfifthpays.com\n\n\n",
                    style: TextStyle(fontSize: 18, decoration: TextDecoration.underline),
                  ),


                ],
              ),
            ),
          ),
      ),
    );
  }

}