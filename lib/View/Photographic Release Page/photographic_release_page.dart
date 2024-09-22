import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Controller/Photographic Release Page/photographic_release_controller.dart';
import '../Utils/colors.dart';

class PhotographicReleasePage extends StatelessWidget{
  PhotographicReleasePage({super.key});
  final _photographicReleaseController = Get.put(PhotographicReleaseController());

  @override
  Widget build(BuildContext context){
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width *0.05),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Authorization and Release for Use of Photographs and Images\n",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                  const Text(style: TextStyle(fontSize: 20), "I, [First Name Last Name], hereby "
                      "authorize Tenth Fifth Pays and its representatives to take, maintain, "
                      "share, and disclose photographs, and/or digital images of me or my contacts."
                      "   1. PURPOSE:   I understand that these Images may be used for "
                      "the following purposes:   a) Marketing and advertising of Tenth"
                      " Fifth Pays's services   e) Publication in presentations at conferences   "
                      "f) Social media posts and website content    2. OWNERSHIP AND RIGHTS: "
                      "  I understand that Tenth Fifth Pays will own these Images and all rights"
                      " associated with them. I waive any right to inspect or approve the "
                      "finished product or any written copy that may be used in connection "
                      "with the Images.    3. CONFIDENTIALITY:   I understand that "
                      "Tenth Fifth Pays will make reasonable efforts to protect my privacy. "
                      "My name and other identifying information will not be disclosed without "
                      "my separate written consent, unless required by law.    "
                      "4. NO COMPENSATION:   I understand that I will not receive any payment "
                      "or compensation for the use of these Images.    5. RELEASE OF LIABILITY: "
                      "  I release Tenth Fifth Pays, its employees, and representatives "
                      "from any claims, damages, or liability arising from or related to the "
                      "use of these Images, including any claims for defamation, invasion of privacy, "
                      "or violation of any personal or proprietary right.    "
                      "6. DURATION AND REVOCATION:   This authorization will remain in effect "
                      "unless revoked by me in writing. I understand that if I revoke this authorization, "
                      "it will not affect any actions taken before the receipt of my written "
                      "revocation.    7. UNDERSTANDING AND VOLUNTARY CONSENT:   I have "
                      "read this authorization and release and fully understand its contents. "
                      "I voluntarily consent to the taking, use, and disclosure of my Images as "
                      "specified above.    8. SEPARATE CONSENT FOR EACH USE:   I "
                      "understand that Tenth Fifth Pays will obtain my separate consent before "
                      "using my Images for any purpose not specified in this authorization.    "
                      "9. COMPLIANCE:   I understand that this authorization is compliant "
                      "with all applicable privacy laws.    10. COPY OF AUTHORIZATION:   "
                      "I understand that I am entitled to receive a copy of this signed authorization."
                      "    User Name: "),
                    const Text(" [First Name Last Name]", style: TextStyle(fontSize: 20,)),
                  SizedBox(height: height*0.02,),
                  Padding(
                    padding:  EdgeInsets.only(
                        top: height*0.01 ,
                        left: width*0.01, right: width*0.05
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Transform.scale(
                          scale: 1.5,
                          child: Obx(() => Checkbox(
                            value: _photographicReleaseController.isPhotoPolicyAccepted.value,
                            onChanged: (bool? value) {
                              _photographicReleaseController.isPhotoPolicyAccepted.value = value!;
                            },
                            //activeColor: AppPrimaryColor.primaryColor, // Filled color
                            checkColor: Colors.white, // Tick mark color
                          )),
                        ),
                        const Flexible(
                            child: Text('I accept Deee-Deee Photo Policy',style: TextStyle(fontFamily: 'Arial',fontSize: 18,fontWeight: FontWeight.w500)))
                      ],
                    ),
                  ),
                  SizedBox(height: height*0.03,),
                  ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppPrimaryColor.primaryColor
                    ),
                    child: Text("Next",
                      style: TextStyle(color: AppPrimaryColor.secondaryButtonColor,fontFamily: 'Arial', fontWeight: FontWeight.bold, fontSize: 24),),),
                  SizedBox(height: height*0.1,),
                ],
              ),
            ),
          )
      ),
    );
  }

}