// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
   
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
        
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Container(
                //child: SizedBox(
                  width: double.infinity,
                  color: const Color.fromARGB(255, 10, 163, 168),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        SizedBox(
                          height: 35,
                
                        ),
                      Text("welcome",style:TextStyle(fontSize: 33,fontFamily: "myfont") ,),
                      SizedBox(
                          height: 35,
                
                        ),
                      SvgPicture.asset("assets/icons/chat.svg",width:288,),
                    SizedBox(
                          height:80,
                                                                
                
                    ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/login");
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 188, 78, 207)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(horizontal: 85, vertical: 5)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(27))),
                        ),
                        child: Text(
                          "login",
                          style: TextStyle(fontSize:20 ,color: Colors.grey[850]),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/signup");
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(const Color.fromARGB(255, 208, 176, 213)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(horizontal: 80, vertical:5)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                        ),
                        child: Text(
                          "SignUp",
                          style: TextStyle(fontSize: 18, color: Colors.grey[850]),
                        ),
                      ),
                    ],
                  ),
                ),
              //),
              Positioned(
                left: 0,
                child: Image.asset("assets/images/main_top.png",width: 111),
                ),
            
              Positioned(
               bottom: 0,
                child: Image.asset(
                  "assets/images/main_bottom.png",
                  width: 60,
                  
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
