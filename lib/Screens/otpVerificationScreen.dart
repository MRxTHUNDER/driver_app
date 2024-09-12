import 'package:driver_app/screens/Homescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/CustomPinput.dart';



class OtpVerificationScreen extends StatelessWidget {
  final TextEditingController phoneController;

  OtpVerificationScreen(this.phoneController);

  Widget title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'R',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Colors.redAccent),
          children: [
            TextSpan(
              text: 'ed',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            TextSpan(
              text: 'Rikshaw',
              style: TextStyle(color: Colors.redAccent, fontSize: 30),
            ),
          ]),
    );
  }


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final TextEditingController _pinPutController = TextEditingController();

    return Scaffold(
      // appBar: AppBar(
      //   title: ,
      //   leading:
      // ),
      // appBar: AppBar(
      //   title: Text("Verify OTP", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800)),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: height * .05),
              Container(
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () { Get.back(); },
                      child: Icon(
                        Icons.arrow_back, size: 25, // add custom icons also
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text("Verify OTP",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500)
                    ),

                  ],
                ),
              ),
              //title(),
              SizedBox(height: height * .05),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 8),
                        Text("Enter Verification Code", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800)),
                        SizedBox(height: 7,),
                        // Use the phone number from the controller
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                                phoneController.text.isNotEmpty
                                    ? "Send to ${phoneController.text}"
                                    : "Send to ___________", style: TextStyle(fontSize: 15)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              CustomPinput(
                controller: _pinPutController,
                length: 6, // You can specify the length of the PIN
                onSubmit: (_pinPutController) {
                  print('PIN entered: $_pinPutController');
                },
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 50,
                            width: 150,
                            child: FloatingActionButton(
                              onPressed: (){
                                Get.to(HomeScreen());
                              },
                              backgroundColor: Colors.white,
                              elevation: 20,
                              //shape: ShapeBorder(),
                              child: Text(
                                "Next",
                                style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
