import 'package:cantrip/Screens/become_host.dart';
import 'package:cantrip/Screens/chat_screen.dart';
import 'package:cantrip/Screens/fav_screen.dart';
import 'package:cantrip/Screens/home_screen.dart';
import 'package:cantrip/Screens/locations.dart';
import 'package:cantrip/Screens/login_screen.dart';
import 'package:cantrip/Screens/settings.dart';
import 'package:cantrip/Screens/signup_screen.dart';
import 'package:cantrip/Screens/splash_screen.dart';
import 'package:cantrip/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Screens/become_host1.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, screenType){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const SplashScreen(),
          );
        });
  }
}
