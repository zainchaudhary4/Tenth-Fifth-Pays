import 'package:flutter/material.dart';
import '../Utils/colors.dart';

class ReviewAndConfirmTransaction extends StatelessWidget{
  const ReviewAndConfirmTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("\nReview and Confirm Transaction Details\n", style: TextStyle(fontFamily: 'Arial',fontSize: 24,fontWeight: FontWeight.bold),),
            const Text("Please take a moment to review and confirm all the details before finalizing your transaction.\n\nIf you need to make a "
                "change to the transaction, click the button below.\n", style: TextStyle(fontFamily: 'Arial',fontSize: 18,),),
            Center(
              child: Padding(
                padding:  EdgeInsets.only(
                    top: height*0.02,
                    bottom: height*0.05
                ),
                child: SizedBox(
                  height: height*0.06,
                  width: width*0.77,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppPrimaryColor.primaryColor
                    ),
                    child: const Text('Revise Transactions',style: TextStyle(fontFamily: 'Arial',fontSize: 22,color: Colors.white,fontWeight: FontWeight.w600),),
                    onPressed: (){ },
                  ),
                ),
              ),
            ),
          ]
    );
  }

}