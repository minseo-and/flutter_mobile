

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sns/mainpage.dart';

class SignIn extends StatefulWidget {

  _SignInState createState() => _SignInState();

}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {

    GestureDetector(
      onTap: () {
        showBottomSheet(context: context,
            builder: (BuildContext context) {
              return Container(
                height: 300,
                decoration: const BoxDecoration(
                    color: Color(0xffF3F3F3),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)
                    )
                ),
              );
            });
      },
    );



    return Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xff1EB79A), Color(0xff00E6A4), Color(0xff3FE48A),],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                  )
              ),
            ),
            Container(
              margin: EdgeInsets.all(100),
              child: const Image(
                image: AssetImage('assets/image/logo.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainPage())
                );
              },
              child: Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(top: 500),
                width: 280,
                height: 50,
                decoration: const BoxDecoration(
                  color: Color(0xff1EB79A),
                  borderRadius: BorderRadius.all(Radius.circular(30))
                ),

                  child: const Center(
                    child: Text('로그인',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
              ),
            ),
          ],
        )
    );
  }

}