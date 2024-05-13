import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TripContainer extends StatelessWidget {
  final String img;
  final double cntheight;
  final double cntwidth;
  TripContainer(
      {
        required this.img,
        required this.cntheight,
        required this.cntwidth,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: cntheight,
        width: cntwidth,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(3.5.h)),
            image: DecorationImage(
                image: AssetImage(img),
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover)),
    );
  }
}
