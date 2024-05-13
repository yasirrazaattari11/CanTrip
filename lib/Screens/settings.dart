import 'package:cantrip/Components/settings_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: Icon(Icons.arrow_back_ios,color: Colors.black,size: 4.h,),
        ),
        title: Text('Settings',style: GoogleFonts.poppins(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color:Colors.black
        ),),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 2.h,),
              Text(
                'Account',style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black
              ),),
              SizedBox(height: 1.h,),
              Container(
                width: double.infinity,
                height: 21.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1.h),
                  color: Colors.grey
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1.h,vertical: 1.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SettingsContainer(text: 'Edit Profile', icon: Icons.perm_identity_outlined),
                      SizedBox(height: 1.h,),
                      const SettingsContainer(text: 'Security', icon:Icons.security_outlined),
                      SizedBox(height: 1.h,),
                      const SettingsContainer(text: 'Notifications', icon:Icons.notifications_none_outlined),
                      SizedBox(height: 1.h,),
                      const SettingsContainer(text: 'Privacy', icon:Icons.lock_outline_rounded),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
