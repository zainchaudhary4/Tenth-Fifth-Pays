import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Controller/Photographic Release Page/photographic_release_controller.dart';
import '../Utils/app_logo.dart';
import '../Utils/colors.dart';

class PhotographicReleasePage extends StatelessWidget{
  PhotographicReleasePage({super.key});
  final PhotographicReleaseController _photographicReleaseController = Get.put(PhotographicReleaseController());

  @override
  Widget build(BuildContext context){
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
         // appBar: AppBar(
         //   automaticallyImplyLeading: false,
         //   leading: Container(
         //       height: height*0.1,
         //       width: width*0.4,
         //       child: AppLogo.logo),
         // ),
        body: Padding(
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
                Padding(
                  padding:  EdgeInsets.only(
                    top: height*0.02,
                    left: width*0.04,
                  ),
                  child: const Text("Authorization and Release for Use of Photographs and Images",
                    style: TextStyle(fontFamily: 'Arial',fontSize: 19,fontWeight: FontWeight.w600),),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                      left: width*0.04,
                      top: height*0.03
                  ),
                  child: const Text(style: TextStyle(fontFamily: 'Arial',fontSize: 14), "I, [First Name Last Name], hereby authorize Tenth Fifth Pays and its representatives to take, maintain, share, and disclose photographs, and/or digital images of me or my contacts.\n 1. PURPOSE:\n I understand that these Images may be used for the following purposes:\n a) Marketing and advertising of Tenth Fifth Pays's services\n e) Publication in presentations at conferences\n f) Social media posts and website content\n 2. OWNERSHIP AND RIGHTS:\n I understand that Tenth Fifth Pays will own these Images and all rights associated with them. I waive any right to inspect or approve the finished product or any written copy that may be used in connection with the Images.\n 3. CONFIDENTIALITY:\n I understand that Tenth Fifth Pays will make reasonable efforts to protect my privacy. My name and other identifying information will not be disclosed without my separate written consent, unless required by law.\n 4. NO COMPENSATION:\n I understand that I will not receive any payment or compensation for the use of these Images.\n 5. RELEASE OF LIABILITY:\n I release Tenth Fifth Pays, its employees, and representatives from any claims, damages, or liability arising from or related to the use of these Images, including any claims for defamation, invasion of privacy, or violation of any personal or proprietary right.\n 6. DURATION AND REVOCATION: This authorization will remain in effect unless revoked by me in writing. I understand that if I revoke this authorization, it will not affect any actions taken before the receipt of my written revocation.\n 7. UNDERSTANDING AND VOLUNTARY CONSENT:\n I have read this authorization and release and fully understand its contents. I voluntarily consent to the taking, use, and disclosure of my Images as specified above.\n 8. SEPARATE CONSENT FOR EACH USE:\n I understand that Tenth Fifth Pays will obtain my separate consent before using my Images for any purpose not specified in this authorization.\n 9. COMPLIANCE:\n I understand that this authorization is compliant with all applicable privacy laws.\n 10. COPY OF AUTHORIZATION:\n I understand that I am entitled to receive a copy of this signed authorization.\n User Name:",),
                ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: width*0.04,
                        top: height*0.03
                    ),
                    child: const Text("[First Name Last Name]", style: TextStyle(fontFamily: 'Arial',fontSize: 14)),
                  ),
                SizedBox(height: height*0.02,),
                Padding(
                  padding:  EdgeInsets.only(
                      top: height*0.01 ,
                      left: width*0.01, right: width*0.05
                  ),
                  child: Row(
                    children: [
                      Transform.scale(
                        scale: 1.5,
                        child: Obx(() => Checkbox(
                          value: _photographicReleaseController.isPhotoPolicyAccepted.value,
                          onChanged: (bool? value) {
                            _photographicReleaseController.isPhotoPolicyAccepted.value = value!;
                          },
                          activeColor: AppPrimaryColor.primaryColor,
                          checkColor: Colors.white,
                        )),
                      ),
                      Flexible(
                          child: Text('I accept Deee-Deee Photo Policy',style: TextStyle(fontFamily: 'Arial',fontSize: 14)))
                    ],
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
                    child: const Text('Next',style: TextStyle(fontFamily: 'Arial',fontSize: 22,color: Colors.white,fontWeight: FontWeight.w600),),
                    onPressed: (){

                    },
                  ),
                ),
              ),
            ),
                SizedBox(height: height*0.1,),
              ],
            ),
          ),
        ),
      ),
    );
  }

}