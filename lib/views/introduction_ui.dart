// ignore_for_file: prefer_const_constructors, camel_case_types, unused_import, prefer_const_literals_to_create_immutables

import 'package:dti_love_project/views/login_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionUI extends StatefulWidget {
  const IntroductionUI({super.key});

  @override
  State<IntroductionUI> createState() => _IntroductionUIState();
}

class _IntroductionUIState extends State<IntroductionUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.purple[100],
      body: SizedBox(
        child: IntroductionScreen(
          autoScrollDuration: 4000,
          infiniteAutoScroll: true,
          scrollPhysics: BouncingScrollPhysics(),
          pages: [
            PageViewModel(
              titleWidget: Text(
                'เหนือ',
                style: GoogleFonts.kanit(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              image: Image.asset('assets/images/north.jpg'),
              bodyWidget: Text(
                'ภูมิภาคที่อยู่ด้านบนสุดของไทย มีลักษณะภูมิประเทศอันประกอบไปด้วยเทือกเขาสลับซับซ้อน',
                style: GoogleFonts.kanit(),
                textAlign: TextAlign.center,
              ),
            ),
            PageViewModel(
              titleWidget: Text(
                'กลาง',
                style: GoogleFonts.kanit(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              image: Image.asset('assets/images/central_region.png'),
              bodyWidget: Text(
                'ภูมิภาคตอนกลางที่มีพื้นที่ครอบคลุมที่ราบลุ่มแม่น้ำเจ้าพระยา ภาคกลางยังเป็นภูมิภาคที่มีกรุงเทพมหานคร เมืองหลวงของประเทศไทยตั้งอยู่อีกด้วย',
                style: GoogleFonts.kanit(),
                textAlign: TextAlign.center,
              ),
            ),
            PageViewModel(
              titleWidget: Text(
                'อีสาน',
                style: GoogleFonts.kanit(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              image: Image.asset('assets/images/northeast.jpg'),
              bodyWidget: Text(
                'ภูมิภาคที่มีแม่น้ำโขงกั้นประเทศลาวและมีทิวเขาเพชรบูรณ์และทิวเขาดงพญาเย็น',
                style: GoogleFonts.kanit(),
                textAlign: TextAlign.center,
              ),
            ),
            PageViewModel(
              titleWidget: Text(
                'ใต้',
                style: GoogleFonts.kanit(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              image: Image.asset('assets/images/south.jpg'),
              bodyWidget: Text(
                'ภูมิภาคที่มีตั้งอยู่บนคาบสมุทรมลายู ขนาบด้วยอ่าวไทย\nและทะเลอันดามันพื้นที่ติดชายฝั่งทะเล',
                style: GoogleFonts.kanit(),
                textAlign: TextAlign.center,
              ),
            ),
            PageViewModel(
              titleWidget: Text(
                'ตะวันออก',
                style: GoogleFonts.kanit(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              image: Image.asset('assets/images/east.jpeg'),
              bodyWidget: Text(
                'ภูมิภาคหนึ่งที่มีความสำคัญทางเศรษฐกิจ เนื่องจากเป็นแหล่งอุตสาหกรรม ผลไม้ และอัญมณีของประเทศ',
                style: GoogleFonts.kanit(),
                textAlign: TextAlign.center,
              ),
            ),
            PageViewModel(
              titleWidget: Text(
                'ตะวันตก',
                style: GoogleFonts.kanit(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              image: Image.asset('assets/images/west.jpg'),
              bodyWidget: Text(
                'ภูมิภาคมีความหลากหลาย ตามลักษณะทางภูมิศาสตร์ซึ่งแตกต่างกันค่อนข้างมาก',
                style: GoogleFonts.kanit(),
                textAlign: TextAlign.center,
              ),
            ),
          ],
          showSkipButton: true,
          skip: Text(
            'ข้าม',
            style: GoogleFonts.kanit(
              fontSize: 19,
              fontWeight: FontWeight.bold,
              color: Colors.purple,
            ),
          ),
          onSkip: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginUI()),
          ),
          dotsDecorator: DotsDecorator(
            size: Size(
              MediaQuery.of(context).size.width * 0.025,
              MediaQuery.of(context).size.height * 0.025,
            ),
            color: Colors.grey,
            activeSize: Size(
              MediaQuery.of(context).size.width * 0.050,
              MediaQuery.of(context).size.height * 0.025,
            ),
            activeColor: Colors.purple,
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(25.0),
              ),
            ),
          ),
          next: Icon(
            Icons.arrow_forward,
          ),
          nextFlex: 0,
          done: Text(
            'เริ่มต้น',
            style: GoogleFonts.kanit(
              fontSize: 19,
              fontWeight: FontWeight.bold,
              color: Colors.purple,
            ),
          ),
          onDone: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LoginUI(),
            ),
          ),
        ),
      ),
    );
  }
}
