import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
class Locations extends StatefulWidget {
  const Locations({super.key});

  @override
  State<Locations> createState() => _LocationsState();
}

class _LocationsState extends State<Locations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: Icon(Icons.arrow_back,color: Colors.black,size: 4.h,),
        ),
        title: Image(image: const AssetImage('Assets/Images/logo.png',),filterQuality: FilterQuality.high,height: 12.h,width: 12.h,),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 2.h),
            child: Icon(Icons.search,color: Colors.black,size: 4.h,),
          )
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 22.103.h,),
                const Image(image: AssetImage('Assets/Images/locations.png'),filterQuality: FilterQuality.high,fit: BoxFit.cover,),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: 25.h,
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
                child: Center(
                  child: Text('Locations',style: GoogleFonts.poppins(
                      color: Colors.blue,
                      fontSize: 18.sp,
                      fontWeight:FontWeight.w500,
                      letterSpacing: 2
                  ),),
                ),
              ),
              SizedBox(height: 6.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.h,vertical: 2.h),
                child: Container(
                  height: 43.7.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(2.h))
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0.5.h,vertical: 1.2.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 19.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.5.h),
                              image: const DecorationImage(
                                  image: AssetImage('Assets/Images/hunza.png'),
                                  filterQuality: FilterQuality.high,
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(height: 1.h,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0.5.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                  'Hunza Valley',
                                  style: GoogleFonts.poppins(
                                      fontSize: 13.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500
                                  )
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star,color: Colors.yellow,size: 3.h,),
                                  Text(
                                      '4.5',
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
                        ),
                        SizedBox(height: 1.h,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0.5.h),
                          child: Text('Hunza Valley is renowned for its unparalleled natural beauty. Surrounded by towering snow-capped peaks, including Rakaposhi, Ultar Sar, and Ladyfinger Peak, the valley offers breathtaking vistas at every turn. The Hunza River flows through the valley, adding to its picturesque charm',
                          style: GoogleFonts.poppins(
                              fontSize: 10.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                          ),
                              textAlign: TextAlign.justify),
                        ),
                        SizedBox(height: 2.h,),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.fiber_manual_record,color: Colors.grey,size: 1.5.h,),
                              SizedBox(width: 2.w,),
                              Text(
                                  '2 weeks ago',
                                  style: GoogleFonts.poppins(
                                      fontSize: 10.sp,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w300
                                  )
                              ),
                            ],
                          ),)
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      )
    );
  }
}
