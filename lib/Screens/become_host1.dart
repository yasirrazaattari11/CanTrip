import 'package:cantrip/navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';

import '../Components/main_buttons.dart';
import '../Components/textfields.dart';
import '../Constants/colors.dart';
class BecomeHost1 extends StatefulWidget {
  const BecomeHost1({super.key});

  @override
  State<BecomeHost1> createState() => _BecomeHost1State();
}

class _BecomeHost1State extends State<BecomeHost1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.5.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5.h,),
                const Image(image: AssetImage('Assets/Images/logo.png'),filterQuality: FilterQuality.high,),
                SizedBox(height: 2.h,),
                Text("Become a Services\nProvider",style: GoogleFonts.nunito(
                    fontSize: 19.sp,
                    fontWeight: FontWeight.w700,
                    color:primary
                ),),
                SizedBox(height: 2.h,),
                UserTextFields(
                    keyboardType: TextInputType.text,
                    labelText: 'Language Spoken',
                    obscureText: false,
                    icon: Icons.language_outlined,
                    sizeAll: 1.5.h,
                    sicon: Icons.done,
                    siconcolor: primary),
                SizedBox(height: 1.h,),
                UserTextFields(
                    keyboardType: TextInputType.text,
                    labelText: 'Trip Location',
                    obscureText: false,
                    icon: Icons.location_on_outlined,
                    sizeAll: 1.5.h,
                    sicon: Icons.done,
                    siconcolor: primary),
                SizedBox(height: 1.h,),
                UserTextFields(
                    keyboardType: TextInputType.text,
                    labelText: 'Certification or Training(if any)',
                    obscureText: false,
                    icon: Icons.model_training,
                    sizeAll: 1.5.h,
                    sicon: Icons.done,
                    siconcolor: primary),
                SizedBox(height: 1.h,),
                UserTextFields(
                    keyboardType: TextInputType.text,
                    labelText: 'Area Expert',
                    obscureText: false,
                    icon: Icons.area_chart_outlined,
                    sizeAll: 1.5.h,
                    sicon: Icons.done,
                    siconcolor: primary),
                SizedBox(height: 1.h,),
                UserTextFields(
                    keyboardType: TextInputType.number,
                    labelText: 'Available Days per Week',
                    obscureText: false,
                    icon: Icons.numbers,
                    sizeAll: 1.5.h,
                    sicon: Icons.done,
                    siconcolor: primary),
                SizedBox(height: 1.h,),
                UserTextFields(
                    keyboardType: TextInputType.text,
                    labelText: 'Share your Experience of arranging Trip',
                    obscureText: false,
                    icon: Icons.trip_origin,
                    sizeAll: 1.5.h,
                    sicon: Icons.done,
                    siconcolor: primary),
                SizedBox(height: 2.h,),
                Row(
                  children: [
                    Icon(Icons.check_box_outline_blank_outlined,color: user_purple,size: 2.5.h,),
                    SizedBox(width: 2.w,),
                    Text("By tapping 'submit', you're agreeing to the Cantrip",style: GoogleFonts.poppins(
                        fontSize: 8.sp,
                        color: Colors.black
                    ),),
                    Text(" Terms",style: GoogleFonts.poppins(
                        fontSize: 8.sp,
                        color: user_purple
                    ),),
                    Text(" of",style: GoogleFonts.poppins(
                        fontSize: 8.sp,
                        color: user_purple
                    ),),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.5.h),
                  child: Row(
                    children: [
                      Text("Service",style: GoogleFonts.poppins(
                          fontSize: 8.sp,
                          color: user_purple
                      ),),
                      Text(" and",style: GoogleFonts.poppins(
                          fontSize: 8.sp,
                          color: Colors.black
                      ),),
                      Text(" Privacy Policy",style: GoogleFonts.poppins(
                          fontSize: 8.sp,
                          color: user_purple
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 2.h,),
                GestureDetector(
                  child: const MainButtons(
                    color: primary,
                    text: 'Submit',
                    textColor: Colors.white,),
                  onTap: (){
                    Navigator.push(context,
                        PageTransition(child: MyNavigationBar(), type: PageTransitionType.fade));
                  },
                ),
              ],
            ),)
          ],
        ),
      ),
    );
  }
}
