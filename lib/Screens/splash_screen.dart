import 'dart:async';

import 'package:cantrip/Constants/colors.dart';
import 'package:cantrip/Screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:page_transition/page_transition.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context,
          PageTransition(child: LoginScreen(), type: PageTransitionType.fade));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(image: AssetImage('Assets/Images/logo.png'),filterQuality: FilterQuality.high,),
          SizedBox(height: 5.h,),
          Text('Get with us and Get away',style: GoogleFonts.nunito(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
            color: primary
          ),),
        ],
      ),
    );
  }
}
