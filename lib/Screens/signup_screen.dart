import 'package:cantrip/Constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';

import '../Components/main_buttons.dart';
import '../Components/textfields.dart';
import 'login_screen.dart';
class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 1.5.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8.h,),
                const Image(image: AssetImage('Assets/Images/logo.png'),filterQuality: FilterQuality.high,),
                SizedBox(height: 3.h,),
                Text("Sign up \nYour Account",style: GoogleFonts.nunito(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w800,
                    color:primary
                ),),
                SizedBox(height: 1.h,),
                UserTextFields(
                    keyboardType: TextInputType.name,
                    labelText: 'Name',
                    obscureText: false,
                    icon: FontAwesomeIcons.user,
                    sizeAll: 1.5.h,
                    sicon: Icons.done,
                    siconcolor: primary),
                SizedBox(height: 1.h,),
                UserTextFields(
                    keyboardType: TextInputType.emailAddress,
                    labelText: 'Email',
                    obscureText: false,
                    icon: Icons.alternate_email,
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
                UserTextFields(
                    keyboardType: TextInputType.text,
                    labelText: 'Confirm Password',
                    obscureText: true,
                    icon: FontAwesomeIcons.lock,
                    sizeAll: 1.5.h,
                    sicon: Icons.visibility_off_outlined,
                    siconcolor: primary),
                SizedBox(height: 5.h,),
                GestureDetector(
                  child: const MainButtons(
                    color: Colors.white,
                    text: 'Sign up',
                    textColor: primary,),
                  onTap: (){
                    Navigator.push(context,
                        PageTransition(child: LoginScreen(), type: PageTransitionType.fade));
                  },
                ),
                SizedBox(height: 3.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an Account?",style: GoogleFonts.poppins(
                        fontSize: 10.sp,
                        color: primary
                    ),),
                    GestureDetector(
                      child: Text("Log in",style: GoogleFonts.poppins(
                          fontSize: 10.sp,
                          color: primary,
                          fontWeight: FontWeight.w600
                      ),),
                      onTap: (){
                        Navigator.push(context,
                            PageTransition(child: LoginScreen(), type: PageTransitionType.fade));
                      },
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
