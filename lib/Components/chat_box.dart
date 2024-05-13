import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
class ChatBox extends StatelessWidget {
  final String name,message,time,icon_type,profile_image;
  const ChatBox({super.key,required this.name,required this.message,required this.time,required this.icon_type,required this.profile_image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.h,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(2.h)),
          color: Colors.white
      ),
      child: Padding(
        padding:EdgeInsets.symmetric(horizontal: 1.h,vertical: 1.h),
        child: Row(
          children: [
            CircleAvatar(
              radius: 5.h,
              backgroundImage: NetworkImage(profile_image), // Add your profile image URL here
            ),
            SizedBox(width:1.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        name,
                        style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500
                        )
                    ),
                    SizedBox(width: 28.w,),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                          time,
                          style: GoogleFonts.poppins(
                              fontSize: 8.sp,
                              color: Colors.grey,
                              fontWeight: FontWeight.w300
                          )
                      ),
                    )
                  ],
                ),
                SizedBox(height: 1.h,),
                Row(
                  children: [
                    Image(image: AssetImage(icon_type),filterQuality: FilterQuality.high,color: Colors.black,),
                    SizedBox(width: 2.w),
                    Text(
                        message,
                        style: GoogleFonts.poppins(
                            fontSize:10.sp,
                            color:Colors.black,
                            fontWeight:FontWeight.w400
                        )
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
