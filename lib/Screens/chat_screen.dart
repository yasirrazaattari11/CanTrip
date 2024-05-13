import 'package:cantrip/Components/chat_box.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: Icon(Icons.arrow_back,color: Colors.black,size: 4.h,),
        ),
        title: Text('Chat Room',style: GoogleFonts.poppins(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color:Colors.black
        ),),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 2.h),
            child: Image(image: const AssetImage('Assets/Images/message.png'),filterQuality: FilterQuality.high,height: 4.h,width: 4.h,color: Colors.black,)
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.grey,
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                    contentPadding:EdgeInsets.symmetric(
                        horizontal: 2.h, vertical: 2.5.h),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.w500,
                      fontSize: 11.sp,
                    ),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none),
              ),
              SizedBox(height: 2.h,),
              const ChatBox(name: 'Aliya Khan', message: 'See you next week!', time: '09:32 AM', icon_type: 'Assets/Images/sent.png', profile_image: ''),
              SizedBox(height: 1.h,),
              const ChatBox(name: 'Rekhab', message: "That's great, Thankyou!", time: '06:32 AM', icon_type: 'Assets/Images/received.png', profile_image: '')
        ],
          ),
        ),
      ),
    );
  }
}
