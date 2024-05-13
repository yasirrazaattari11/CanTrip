import 'package:cantrip/Components/complete_trip.dart';
import 'package:cantrip/Constants/colors.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double progressValue = 0.7;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: Icon(Icons.menu,color: Colors.black,size: 4.h,),
        ),
        title: Image(image: const AssetImage('Assets/Images/logo.png',),filterQuality: FilterQuality.high,height: 12.h,width: 12.h,),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 2.h),
            child: Icon(Icons.search,color: Colors.black,size: 4.h,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 31.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5.h),
                    bottomRight: Radius.circular(5.h)),
                color: Colors.white,
                boxShadow:[
              BoxShadow(
              color: Colors.grey.withOpacity(0.5), // shadow color
              spreadRadius: 5, // spread radius
              blurRadius: 7, // blur radius
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                child: Column(
                  children: [
                    SizedBox(height: 5.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Hey,',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black),
                                ),
                                Text(
                                  'User!',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            Text(
                              'Get with us or Get Away',
                              style: GoogleFonts.poppins(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        CircularProfileAvatar(
                          '',
                          backgroundColor: secondary,
                          borderWidth: 1,
                          borderColor:primary,
                          elevation: 20,
                          radius: 6.h,
                          cacheImage: true,
                          errorWidget: (context, url, error) {
                            return Icon(
                              Icons.face,
                              size: 8.h,
                            );
                          },
                          onTap: () {},
                          animateFromOldImageOnUrlChange: true,
                          placeHolder: (context, url) {
                            return const Center(child: CircularProgressIndicator());
                          },
                        )
                      ],
                    ),
                    SizedBox(height: 5.h,),
                    Container(
                      width: 30.h,
                      height: 5.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1.8.h),

                          gradient: const LinearGradient(colors: [
                            Color(0xff05A4C8),
                            Color(0xff7CD5D0)
                          ])
                      ),
                      child: Center(
                        child: Text(
                            'Become a local Host',
                            style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w400
                            )
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 2.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              child: Text(
                  'Location',
                  style: GoogleFonts.poppins(
                      fontSize: 10.sp,
                      color: Colors.grey,
                      fontWeight: FontWeight.w300
                  )
              ),
            ),
            SizedBox(height: 1.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              child: Row(
                children: [
                  Icon(Icons.location_on,color: Colors.black,size: 3.h,),
                  Text(
                      'KPK, Pakistan',
                      style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500
                      )
                  ),
                  Icon(Icons.expand_more,color: secondary,size: 3.h,),

                ],
              ),
            ),
            SizedBox(height: 1.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      'Top Trips',
                      style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500
                      )
                  ),
                  Text(
                      'See all',
                      style: GoogleFonts.poppins(
                          fontSize: 10.sp,
                          color: Colors.grey,
                          fontWeight: FontWeight.w300
                      )
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const CompleteTrip(image: 'Assets/Images/trip.png', place_name: 'Mahodand Lake', city: 'Kalam', price: '4000', ratings: '4.5'),
                    SizedBox(width: 2.w,),
                    const CompleteTrip(image: 'Assets/Images/trip.png', place_name: 'Lulusar', city: 'Kaghan', price: '4000', ratings: '4.5'),
                    SizedBox(width: 2.w,),
                    const CompleteTrip(image: 'Assets/Images/trip.png', place_name: 'Attabad Lake', city: 'Hunza', price: '4000', ratings: '4.5'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 3.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      'Group Trips',
                      style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500
                      )
                  ),
                  Text(
                      'See all',
                      style: GoogleFonts.poppins(
                          fontSize: 10.sp,
                          color: Colors.grey,
                          fontWeight: FontWeight.w300
                      )
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.h,),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.h),
            child: Container(
              width: double.infinity,
              height: 18.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(2.5.h)),
                color: secondary,
              ),

              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.5.h,vertical: 0.5.h),
                child: Row(
                  children: [
                    Container(
                      height: 18.h,
                      width: 18.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(3.5.h)),
                          image: const DecorationImage(
                              image: AssetImage('Assets/Images/trip.png'),
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(width: 2.w,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 1.h,),
                        Text(
                            'Mountain Trip',
                            style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w500
                            )
                        ),
                        SizedBox(height: 1.h,),
                        Text(
                            'Makra Peak',
                            style: GoogleFonts.poppins(
                                fontSize: 10.sp,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500
                            )
                        ),
                        SizedBox(height: 1.h,),
                        Row(
                          children: [
                            Icon(Icons.location_on,color: Colors.grey,size: 3.h,),
                            Text(
                                'Shogran',
                                style: GoogleFonts.poppins(
                                    fontSize: 12.sp,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500
                                )
                            ),
                          ],
                        ),
                        SizedBox(height: 2.h,),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10.h))
                              ),
                              width: 45.w,
                              height: 2.h,// Adjust width as needed
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.5.h), // Adjust border radius as needed
                                child: LinearProgressIndicator(
                                  backgroundColor: Colors.grey[300], // Background color
                                  valueColor:const AlwaysStoppedAnimation<Color>(primary), // Progress color
                                  value: progressValue, // Set the progress value (0.0 to 1.0)
                                ),
                              ),
                            ),
                            Text(
                              '${(progressValue * 100).toInt()}%', // Display progress percentage
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              )
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),)
          ],
        ),
      ),
    );
  }
}
