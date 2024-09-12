import 'package:driver_app/Screens/otpVerificationScreen.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../widgets/CustomTextField.dart';




class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Widget _backButton() {
  //   return InkWell(
  //     onTap: () {
  //       Navigator.pop(context);
  //     },
  //     child: Container(
  //       padding: EdgeInsets.symmetric(horizontal: 10),
  //       child: Row(
  //         children: <Widget>[
  //           Container(
  //             padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
  //             child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
  //           ),
  //           Text('Back',
  //               style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // Widget _entryField(String title, {bool isPassword = false}) {
  //   return Container(
  //     margin: EdgeInsets.symmetric(vertical: 10),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: <Widget>[
  //         Text(
  //           title,
  //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
  //         ),
  //         SizedBox(
  //           height: 10,
  //         ),
  //         TextField(
  //             obscureText: isPassword,
  //             decoration: InputDecoration(
  //               border: InputBorder.none,
  //               fillColor: Color(0xfff3f3f4),
  //               filled: true,
  //               enabledBorder: OutlineInputBorder(
  //                 borderSide: BorderSide(
  //                   color: Color.fromRGBO(210, 210, 210, 1),
  //                 ),
  //                 borderRadius: BorderRadius.circular(10),
  //               ),
  //               focusedBorder: OutlineInputBorder(
  //                 borderSide: BorderSide(
  //                   color: Color.fromRGBO(99, 66, 232, 1),
  //                 ),
  //                 borderRadius: BorderRadius.circular(10),
  //               ),
  //             ))
  //       ],
  //     ),
  //   );
  // }

  Widget _submitButton( TextEditingController _phoneController) {
    return InkWell(
      onTap: () {
        Get.to(OtpVerificationScreen( _phoneController));
      },
      child: Opacity(
        opacity: 0.5,
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(vertical: 12),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.grey.shade200,
                    offset: Offset(2, 4),
                    blurRadius: 5,
                    spreadRadius: 2)
              ],
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xff777371), Color(0xff808080)])),
          child: Text(
            'Send OTP',
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget _divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          Text('or',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              )),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }

  Widget _googleButton() {
    return InkWell(
      onTap: (){

      },
      child: Container(
        height: 50,
        margin: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Opacity(
                opacity: 0.5,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topLeft: Radius.circular(10)),
                  ),
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.g_mobiledata,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Opacity(
                opacity: 0.5,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(5),
                        topRight: Radius.circular(5)),
                  ),
                  alignment: Alignment.center,
                  child: Text('Log in with Google',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w800)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget _createAccountLabel() {
  //   return InkWell(
  //     onTap: () {
  //       Navigator.push(
  //           context, MaterialPageRoute(builder: (context) => SignupScreen()));
  //     },
  //     child: Container(
  //       margin: EdgeInsets.symmetric(vertical: 20),
  //       padding: EdgeInsets.all(15),
  //       alignment: Alignment.bottomCenter,
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           Text(
  //             'Don\'t have an account ?',
  //             style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
  //           ),
  //           SizedBox(
  //             width: 10,
  //           ),
  //           InkWell(
  //             onTap: (){
  //               Get.to(SignupScreen());
  //             },
  //             child: Text(
  //               'Register',
  //               style: TextStyle(
  //                   color: Colors.redAccent,
  //                   fontSize: 13,
  //                   fontWeight: FontWeight.w600),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

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

  // Widget _emailPasswordWidget() {
  //   return Column(
  //     children: <Widget>[
  //       _entryField("Email id"),
  //       _entryField("Password", isPassword: true),
  //     ],
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final TextEditingController _phoneController = TextEditingController();
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      //appBar: AppBar(title: Text(""),),
        body: SingleChildScrollView(
          child: Container(
            height: height,
            child: Column(
              children: <Widget>[
                // Positioned(
                //     // top: -height * .15,
                //     // right: -MediaQuery.of(context).size.width * .4,
                //     // child: BezierContainer()
                // child: Image.asset('assets/images/'),
                // ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[
                        SizedBox(height: height * .1),
                        title(),
                        SizedBox(height: height * .01),

                        Container(
                          height: height * .35,
                          width: double.infinity,
                          child: Opacity(
                            opacity: 0.3,
                            child: Image.asset(
                              'assets/images/r11.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        SizedBox(height: height * .03),
                        CustomTextField(
                          controller: _phoneController,
                          keyboardType: TextInputType.number,
                          fillColor: Colors.white54,
                          filled: true,

                          labelText: 'Enter your Phone Number',
                          hintText: 'Phone Number',
                          prefixIcon: Icon(Icons.phone),
                          // validator: (value) {
                          //   if (value == null || value.isEmpty) {
                          //     return 'Please Select Your Password';
                          //   }
                          //   return null;
                          // },
                        ),
                        SizedBox(height: 30),
                        _submitButton( _phoneController),
                        SizedBox(height: 10),

                        _divider(),
                        _googleButton(),
                        SizedBox(height: height * .0050),
                        //_createAccountLabel(),
                      ],
                    ),
                  ),
                ),
                //Positioned(top: 40, left: 0, child: _backButton()),
              ],
            ),
          ),
        ));
  }
}
