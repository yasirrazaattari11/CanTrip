import 'package:cantrip/Screens/become_host1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';

import '../Components/main_buttons.dart';
import '../Components/textfields.dart';
import '../Constants/colors.dart';
import 'login_screen.dart';
class BecomeHost extends StatefulWidget {
  const BecomeHost({super.key});

  @override
  State<BecomeHost> createState() => _BecomeHostState();
}

class _BecomeHostState extends State<BecomeHost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding:EdgeInsets.symmetric(horizontal: 1.5.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5.h,),
                  const Image(image: AssetImage('Assets/Images/logo.png'),filterQuality: FilterQuality.high,),
                  SizedBox(height: 1.h,),
                  Text("Become a Services\nProvider",style: GoogleFonts.nunito(
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w700,
                      color:primary
                  ),),
                  Align(
                    alignment: Alignment.centerRight,
                    child:Icon(Icons.add_a_photo_outlined,color: primary,size: 5.h,),
                  ),
                  SizedBox(height: 1.h,),
                  UserTextFields(
                      keyboardType: TextInputType.name,
                      labelText: 'First Name',
                      obscureText: false,
                      icon: FontAwesomeIcons.user,
                      sizeAll: 1.5.h,
                      sicon: Icons.done,
                      siconcolor: primary),
                  SizedBox(height: 1.h,),
                  UserTextFields(
                      keyboardType: TextInputType.name,
                      labelText: 'Last Name',
                      obscureText: false,
                      icon: FontAwesomeIcons.user,
                      sizeAll: 1.5.h,
                      sicon: Icons.done,
                      siconcolor: primary),
                  SizedBox(height: 1.h,),
                  UserTextFields(
                      keyboardType: TextInputType.emailAddress,
                      labelText: 'Email',
                      obscureText: false,
                      icon: Icons.email_outlined,
                      sizeAll: 1.5.h,
                      sicon: Icons.done,
                      siconcolor: primary),
                  SizedBox(height: 1.h,),
                  UserTextFields(
                      keyboardType: TextInputType.number,
                      labelText: 'CNIC',
                      obscureText: false,
                      icon: Icons.credit_card,
                      sizeAll: 1.5.h,
                      sicon: Icons.done,
                      siconcolor: primary),
                  SizedBox(height: 1.h,),
                  UserTextFields(
                      keyboardType: TextInputType.none,
                      labelText: 'Upload CNIC',
                      obscureText: false,
                      icon: Icons.add_card_outlined,
                      sizeAll: 1.5.h,
                      sicon: Icons.add_circle,
                      siconcolor: primary),
                  SizedBox(height: 1.h,),
                  UserTextFields(
                      keyboardType: TextInputType.number,
                      labelText: 'Years of Experience as Travel Guide',
                      obscureText: false,
                      icon: Icons.info_outlined,
                      sizeAll: 1.5.h,
                      sicon: Icons.done,
                      siconcolor: primary),
                  SizedBox(height: 3.h,),
                  GestureDetector(
                    child: const MainButtons(
                      color: primary,
                      text: 'Next',
                      textColor: Colors.white,),
                    onTap: (){
                      Navigator.push(context,
                          PageTransition(child: BecomeHost1(), type: PageTransitionType.fade));
                    },
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
