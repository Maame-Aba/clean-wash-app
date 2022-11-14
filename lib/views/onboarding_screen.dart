import 'dart:async';

import 'package:clean_wash/views/2nd_splashscreen.dart';
import 'package:flutter/material.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(const Duration(milliseconds: 3500), () {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return const Splashscreenview();
        },
      ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.contain, image: AssetImage("assets/images/cleanwash.png"))),
      ),
    );
  }
}
