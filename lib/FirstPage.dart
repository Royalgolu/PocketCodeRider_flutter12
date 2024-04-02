import 'dart:async';

import 'package:code_editor/problemStatements.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Problems()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Image(
      fit: BoxFit.fill,
      height: double.infinity,
      image: AssetImage('assets/PCR.png'),
    ));
    //NetworkImage(
    //  'https://w0.peakpx.com/wallpaper/870/448/HD-wallpaper-coder-black-logo-minimal-programmer-programming.jpg')));
  }
}
