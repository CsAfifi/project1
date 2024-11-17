// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field, prefer_final_fields, deprecated_member_use, unused_import, use_super_parameters, override_on_non_overriding_member

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

  class Login extends StatelessWidget {
  const Login({Key? key}): super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 35,
                    ),
                    Text(
                      "LogIn",
                      style: TextStyle(fontSize: 33, fontFamily: "myfont"),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    SvgPicture.asset(
                      "assets/icons/login.svg",
                      width: 288,
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(66),
                      ),
                      width: 266,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Colors.purple[800],
                            ),
                            hintText: "Email:",
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(66),
                      ),
                      width: 255,
                      padding: EdgeInsets.symmetric(horizontal: 1),
                      child: TextField(
                        obscureText:true,
                        //obscureText: true,
                        decoration: InputDecoration(
                            suffix: Icon(
                                Icons.visibility,
                                color: Colors.purple[900],
                              ),
                                //icon: Icon(_obsecureText
                                  //  ? Icons.visibility
                                    //: Icons.visibility_off)

                                 icon: Icon(
                                Icons.lock,
                                color: Colors.purple[800],
                                size: 19,
                                
                                ),
                            hintText: "Password:",
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 220, 115, 238)),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                            horizontal: 106, vertical: 10)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27))),
                      ),
                      child: Text(
                        "login",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account? "),
                        Text(
                          " Sign Up",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                left: 0,
                child: Image.asset("assets/images/main_top.png", width: 111),
              ),
              //  Positioned(
              //  bottom:0,
              //  right: 0,
              //  child: Image.asset(
              //  "assets/images/login_bottom.png",
              //width: 100,
              //),
              //  ),
            ],
          ),
        ),
      ),
    );
  }
}



