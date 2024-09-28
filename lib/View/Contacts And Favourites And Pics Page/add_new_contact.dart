import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tenth_fifth_pays/Controller/Contacts%20And%20Favourites%20And%20Pics/contacts_controller.dart';
import '../Utils/colors.dart';
import '../Widgets/textfields.dart';

class AddNewContact extends StatelessWidget{
  const AddNewContact({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final contactsController = Get.find<ContactsController>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("\n Add New Contact", style: TextStyle(fontFamily: "Arial", fontSize: 24, fontWeight: FontWeight.bold)),
        Padding(
          padding:  EdgeInsets.only(
              left: width*0.04,
              top: height*0.05
          ),
          child: CustomTextField(
            label: 'First Name',
            controller: contactsController.fNameController,
            textInputType: TextInputType.text,
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(
            top: height*0.03,
            left: width*0.04,
          ),
          child: CustomTextField(
            label: 'Last Name',
            controller: contactsController.lNameController,
            textInputType: TextInputType.text,
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(
            top: height*0.03,
            left: width*0.04,
          ),
          child: CustomTextField(
            label: 'Nick Name',
            controller: contactsController.nickNameController,
            textInputType: TextInputType.text,
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(
              left: width*0.04,
              top: height*0.03
          ),
          child: CustomTextField(
            label: 'Email',
            controller: contactsController.emailController,
            textInputType: TextInputType.emailAddress,
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(
            top: height*0.03,
            left: width*0.04,
          ),
          child: CustomTextField(
            label: 'Phone Number',
            controller: contactsController.phoneController,
            textInputType: TextInputType.phone,
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(
            top: height*0.03,
            left: width*0.04,
          ),
          child: CustomTextField(
            label: 'Apple Pay Account',
            controller: contactsController.appPayAccController,
            textInputType: TextInputType.phone,
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(
            top: height*0.03,
            left: width*0.04,
            bottom: height*0.05,
          ),
          child: CustomTextField(
            label: 'Google Pay Account',
            controller: contactsController.gPayAccController,
            textInputType: TextInputType.phone,
          ),
        ),
        Center(
          child: SizedBox(
            height: height*0.06,
            width: width*0.77,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppPrimaryColor.primaryColor
              ),
              child: const Text('Save New Contact',style: TextStyle(fontFamily: 'Arial',fontSize: 22,color: Colors.white,fontWeight: FontWeight.w600),),
              onPressed: (){},
            ),
          ),
        ),
      ],
    );
  }

}