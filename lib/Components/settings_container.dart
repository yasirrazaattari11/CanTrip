import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
class SettingsContainer extends StatelessWidget {
  final IconData icon;
  final String text;
  const SettingsContainer({super.key,required this.text,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,size: 4.h,),
        SizedBox(width: 5.w,),
        Text(
          text,style: GoogleFonts.poppins(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: Colors.black
        ),),
      ],
    );
  }
}
