// ignore_for_file: prefer_const_constructors, camel_case_types, unused_import, prefer_const_literals_to_create_immutables

import 'package:dti_love_project/views/introduction_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _splashScreenUIState();
}

class _splashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    // หน่วงเวลา 2 วิ แล้วไป introductionUI
    Future.delayed(
      Duration(
        seconds: 2,
      ),
      //เมื่อครบเวลาแล้วจะให้ทำอะไร
      //ในที่นี้ไป introductionUI
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => IntroductionUI(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.jpg',
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'ท่องเที่ยวไทย 2567',
                  style: GoogleFonts.kanit(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'Thailand Travel',
                  style: GoogleFonts.kanit(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                CircularProgressIndicator(
                  color: Colors.yellow,
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Created by : Kanchai Singkhot',
                  style: GoogleFonts.itim(
                    fontSize: MediaQuery.of(context).size.height * 0.023,
                    color: Colors.yellow,
                  ),
                ),
                Text(
                  'Southeast Asia University',
                  style: GoogleFonts.itim(
                    fontSize: MediaQuery.of(context).size.height * 0.023,
                    color: Colors.yellow,
                  ),
                ),
                Text(
                  'Copyright ©️DTI❤️❤️❤️',
                  style: GoogleFonts.itim(
                    fontSize: MediaQuery.of(context).size.height * 0.023,
                    color: Colors.yellow,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
