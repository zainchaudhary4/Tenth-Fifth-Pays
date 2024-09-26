import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tenth_fifth_pays/Controller/Request%20Support/request_support_controller.dart';
import 'package:tenth_fifth_pays/View/Deactivate%20Account/deactivate_account_page.dart';
import '../Utils/colors.dart';
import '../Widgets/textfields.dart';

class RequestSupportPage extends StatelessWidget{
  const RequestSupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final reqController = RequestSupportController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
        padding: const EdgeInsets.all(4),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Request Support", style: TextStyle(fontFamily: 'Arial', fontSize: 24, fontWeight: FontWeight.bold)),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(
                        left: width*0.04,
                        top: height*0.03
                    ),
                    child: CustomTextField(
                      label: 'Name',
                      controller: reqController.nameController,
                      textInputType: TextInputType.text,
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      top: height*0.02,
                      left: width*0.04,
                    ),
                    child: CustomTextField(
                      label: 'Email',
                      controller: reqController.emailController,
                      textInputType: TextInputType.emailAddress,
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      top: height*0.01,
                      left: width*0.05,
                    ),
                    child: CustomTextField(
                      label: 'Phone',
                      controller: reqController.phoneController,
                      textInputType: TextInputType.phone,
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      top: height*0.01,
                      left: width*0.05,
                    ),
                    child: CustomTextField(
                      label: 'Message',
                      controller: reqController.messageController,
                      textInputType: TextInputType.text,
                    ),
                  ),
                ],
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
                      child: const Text('Submit',style: TextStyle(fontFamily: 'Arial',fontSize: 22,color: Colors.white,fontWeight: FontWeight.w600),),
                      onPressed: ()=> Get.to(()=> const DeactivateAccountPage()),
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