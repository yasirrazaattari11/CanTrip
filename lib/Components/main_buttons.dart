import 'package:cantrip/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
class MainButtons extends StatelessWidget {
  final Color color;
  final String text;
  final Color textColor;
  const MainButtons({super.key,required this.color,required this.text,required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.h,
      width: double.infinity,
      decoration:BoxDecoration(
          borderRadius:  BorderRadius.all(Radius.circular(20.h)),
          border: Border.all(color: primary),
          color: color
      ),
      child: Center(
        child: Text(text,style: GoogleFonts.roboto(
            fontSize: 13.sp,
            fontWeight: FontWeight.w700,
            color:textColor
        ),),
      ),
    );
  }
}
