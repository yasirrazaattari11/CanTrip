import 'package:cantrip/Components/textfields.dart';
import 'package:cantrip/Constants/colors.dart';
import 'package:cantrip/Screens/become_host.dart';
import 'package:cantrip/Screens/signup_screen.dart';
import 'package:cantrip/navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';

import '../Components/main_buttons.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 1.5.h
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5.h,),
                  Text("Let's start your\nJourney together!",style: GoogleFonts.nunito(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w800,
                    color:Colors.black
                  ),),
                  SizedBox(height: 5.h,),
                  const Image(image: AssetImage('Assets/Images/logo.png'),filterQuality: FilterQuality.high,),
                  SizedBox(height: 5.h,),
                  UserTextFields(
                      keyboardType: TextInputType.name,
                      labelText: 'Username',
                      obscureText: false,
                      icon: FontAwesomeIcons.user,
                      sizeAll: 1.5.h,
                      sicon: Icons.done,
                      siconcolor: primary),
                  SizedBox(height: 1.h,),
                  UserTextFields(
                      keyboardType: TextInputType.text,
                      labelText: 'Password',
                      obscureText: true,
                      icon: FontAwesomeIcons.lock,
                      sizeAll: 1.5.h,
                      sicon: Icons.visibility_off_outlined,
                      siconcolor: primary),
                  SizedBox(height: 1.h,),
                  Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25,right: 10),
                          child: Icon(Icons.check_box_outline_blank_outlined),
                        ),
                      ),
                      Text('Remember me',style: GoogleFonts.poppins(
                          fontSize: 8.sp,
                          color: Colors.grey
                      ),),
                      Padding(
                        padding: const EdgeInsets.only(left: 115),
                        child: Text('Forgot Password?',style: GoogleFonts.poppins(
                            fontSize: 8.sp,
                            color: Colors.black
                        ),),
                      )
                    ],
                  ),
                  SizedBox(height: 2.h,),
                  GestureDetector(
                    child: const MainButtons(
                      color: primary,
                      text: 'Sign in',
                      textColor: Colors.white,),
                    onTap: (){
                      Navigator.push(context,
                          PageTransition(child: BecomeHost(), type: PageTransitionType.fade));
                    },
                  ),
                  SizedBox(height: 2.h,),
                  Center(
                    child: Text("Don't have an Account?",style: GoogleFonts.poppins(
                        fontSize: 10.sp,
                        color: Colors.black
                    ),),
                  ),
                  SizedBox(height: 2.h,),
                  GestureDetector(
                    child: const MainButtons(
                      color: Colors.white,
                      text: 'Create Account',
                      textColor: primary,),
                    onTap: (){
                      Navigator.push(context,
                          PageTransition(child: SignupScreen(), type: PageTransitionType.fade));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
