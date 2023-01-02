

import 'dart:async';

import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  @override
  Widget build(BuildContext context) {

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
          )
        ],
      )
    );
  }

}