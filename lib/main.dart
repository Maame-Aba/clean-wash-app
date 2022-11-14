

// ignore_for_file: prefer_const_constructors, unused_import

import 'package:clean_wash/views/2nd_splashscreen.dart';
import 'package:clean_wash/views/add_details.dart';
import 'package:clean_wash/views/homeview.dart';
import 'package:clean_wash/views/index_page.dart';
import 'package:clean_wash/views/laundry.dart';
import 'package:clean_wash/views/onboarding_screen.dart';
import 'package:clean_wash/views/pickup_details.dart';
import 'package:clean_wash/views/sign_in.dart';
import 'package:clean_wash/views/forgot_password.dart';
import 'package:clean_wash/views/signup.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
  //  home:SignInView(),
  //  home:SignUpView(),
  // home:Forgot_passwordView(),
  // home: IndexPage(),
  // home:Laundry_Services_view(),
  // home:Homeview()
  // home:Details(),
  // home:Pickup_details(),
  home:Splash(),
  ));
}


    
  
