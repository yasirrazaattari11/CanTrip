import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../Constants/colors.dart';
class FavContainer extends StatelessWidget {
  final String trip_type,ratings,location,price,image;
  const FavContainer({super.key,required this.trip_type,required this.ratings,required this.location,required this.price,required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18.h,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.h),
          color: primary
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.5.h,vertical: 0.5.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 18.h,
              width: 18.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(3.5.h)),
                  image: DecorationImage(
                      image: AssetImage(image),
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 1.h,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        trip_type,style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black
                      ),),
                      SizedBox(width: 10.w,),
                      Row(
                        children: [
                          Icon(Icons.star,color: Colors.yellow,size: 3.h,),
                          Text(
                              ratings,
                              style: GoogleFonts.poppins(
                                  fontSize: 10.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300
                              )
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 0.5.h,),
                  Row(
                    children: [
                      Icon(Icons.location_on,color: Colors.black,size: 3.h,),
                      Text(
                          location,
                          style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                          )
                      ),
                    ],
                  ),
                  SizedBox(height: 0.5.h,),
                  Row(
                    children: [
                      Text(
                          price,
                          style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w500
                          )
                      ),
                      Text(
                          '/Visit',
                          style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                          )
                      ),
                    ],
                  ),
                  SizedBox(height: 1.h,),
                  Container(
                    height: 3.h,
                    width: 20.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.h),
                        color: Colors.white
                    ),
                    child: Center(
                      child: Text(
                          'Book Now',
                          style: GoogleFonts.poppins(
                              fontSize: 8.sp,
                              color: primary,
                              fontWeight: FontWeight.w500
                          )
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
