import 'package:cantrip/Components/fav_container.dart';
import 'package:cantrip/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
class FavScreen extends StatefulWidget {
  const FavScreen({super.key});

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: Icon(Icons.arrow_back,color: Colors.black,size: 4.h,),
        ),
        title: Text('Saved Trips',style: GoogleFonts.poppins(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color:Colors.black
        ),),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.5.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 2.h,),
            Text(
              'Events',style: GoogleFonts.poppins(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black
            ),),
            SizedBox(height:1.h,),
            const FavContainer(trip_type: 'Lake Trip', ratings: '4.5', location: 'Hunza', price: '22000', image: 'Assets/Images/trip.png')
          ],
        ),
      ),
    );
  }
}
