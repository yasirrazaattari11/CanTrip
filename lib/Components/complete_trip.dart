import 'package:cantrip/Components/toptrip_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../Constants/colors.dart';
class CompleteTrip extends StatelessWidget {
  final String image,place_name,city,ratings,price;
  const CompleteTrip({super.key,required this.image,required this.place_name,required this.city,required this.price,required this.ratings});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 26.h,
      width: 19.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(2.h)),
        color: secondary
      ),
      child: Padding(
        padding:EdgeInsets.symmetric(horizontal: 0.5.h,vertical: 1.h),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TripContainer(img: image, cntheight: 13.h, cntwidth: 18.h),
              SizedBox(height: 0.5.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      place_name,
                      style: GoogleFonts.poppins(
                          fontSize: 10.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500
                      )
                  ),
                  Row(
                    children: [
                      Icon(Icons.star,color: Colors.yellow,size: 2.h,),
                      Text(
                          ratings,
                          style: GoogleFonts.poppins(
                              fontSize: 8.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w300
                          )
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 1.5.h,),
              Row(
                children: [
                  Icon(Icons.location_on,color: Colors.grey,size: 2.h,),
                  SizedBox(height: 1.w,),
                  Text(
                      city,
                      style: GoogleFonts.poppins(
                          fontSize: 8.sp,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500
                      )
                  ),
                ],
              ),
              SizedBox(height: 1.5.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                          'RS='+price,
                          style: GoogleFonts.poppins(
                              fontSize: 10.sp,
                              color: primary,
                              fontWeight: FontWeight.w500
                          )
                      ),
                      Text(
                          '/Visit',
                          style: GoogleFonts.poppins(
                              fontSize: 10.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w300
                          )
                      ),
                    ],
                  ),


                  Icon(Icons.favorite,size: 3.h,color: primary,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
