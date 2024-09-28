import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Controller/Contacts And Favourites And Pics/contacts_controller.dart';
import '../Utils/colors.dart';

class SaveFavouriteContacts extends StatelessWidget {
  const SaveFavouriteContacts({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final contactsController = Get.put(ContactsController());

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Contacts", style: TextStyle(fontFamily: "Arial", fontSize: 24, fontWeight: FontWeight.bold)),
        Align(
          alignment: Alignment.topRight,
          child: SizedBox(
            width: width*0.42,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.add, color: Colors.white),
                  Text("New Contact", style: TextStyle(fontFamily: "Arial", fontSize: 14, color: Colors.white)),
                ],
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          height: height*0.2,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("John Doe   ", style: TextStyle(fontFamily: "Arial")),
                  Icon(Icons.star_border),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Jane Smith", style: TextStyle(fontFamily: "Arial")),
                  Icon(Icons.star),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Joe Doaks", style: TextStyle(fontFamily: "Arial")),
                  Icon(Icons.star_border),
                ],
              ),
              SizedBox(height: height * 0.02,)
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
          children: [
            // Button 1
            Obx(() => ElevatedButton(
              onPressed: () {
                contactsController.selectedButtonIndex.value = 0; // Assign value here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: contactsController.selectedButtonIndex.value == 0
                    ? Colors.black
                    : Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.menu,
                      color: contactsController.selectedButtonIndex.value == 0
                          ? Colors.white
                          : Colors.black),
                  Text("Contacts",
                      style: TextStyle(
                        fontFamily: "Arial",
                        color: contactsController.selectedButtonIndex.value == 0
                            ? Colors.white
                            : Colors.black,
                      )),
                ],
              ),
            )),
            SizedBox(width: width*0.02,),
            Obx(() => ElevatedButton(
              onPressed: () {
                contactsController.selectedButtonIndex.value = 1; // Assign value here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: contactsController.selectedButtonIndex.value == 1
                    ? Colors.black
                    : Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.star,
                      color: contactsController.selectedButtonIndex.value == 1
                          ? Colors.white
                          : Colors.black),
                  Text("Favourites",
                      style: TextStyle(
                        fontFamily: "Arial",
                        color: contactsController.selectedButtonIndex.value == 1
                            ? Colors.white
                            : Colors.black,
                      )),
                ],
              ),
            )),
            SizedBox(width: width*0.02,),
            Obx(() => ElevatedButton(
              onPressed: () {
                contactsController.selectedButtonIndex.value = 2; // Assign value here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: contactsController.selectedButtonIndex.value == 2
                    ? Colors.black
                    : Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.file_upload_outlined,
                      color: contactsController.selectedButtonIndex.value == 2
                          ? Colors.white
                          : Colors.black),
                  Text("Upload",
                      style: TextStyle(
                        fontFamily: "Arial",
                        color: contactsController.selectedButtonIndex.value == 2
                            ? Colors.white
                            : Colors.black,
                      )),
                ],
              ),
            )),
          ],
          ),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.only(top: height * 0.02),
            child: SizedBox(
              height: height * 0.06,
              width: width * 0.77,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppPrimaryColor.primaryColor,
                ),
                child: const Text(
                  'Save Favourites/ Images',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ),
      ],
    );
  }
}

