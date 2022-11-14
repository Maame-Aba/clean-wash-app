// ignore_for_file: prefer_const_constructors

import 'package:clean_wash/views/sign_in.dart';
import 'package:flutter/material.dart';



class Splashscreenview extends StatefulWidget {
  const Splashscreenview({Key? key}) : super(key: key);

  @override
  State<Splashscreenview> createState() => _SplashscreenviewState();
}

class _SplashscreenviewState extends State<Splashscreenview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 350,
            width: 350,
            
            decoration: BoxDecoration(
                
                image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage("assets/images/laundry-service.jpg"))),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "Get good and affordable washing facilities at the comfort of your home.",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                Text(
                  "We care about our customer first. After submitting order, we will pick up your clothes as you set the time.",
                  
                  style: TextStyle(
                      fontSize: 20,
                      
                      color: Colors.black),
                )
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.03,),
           InkWell(
            onTap: (){
                           Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>SignInView()));
                        }, 
             child: Container(
                height: 65,
                width: 65,
                decoration: const BoxDecoration(
             gradient: LinearGradient(colors: [
                  Colors.green,
                  Colors.yellow,
                  Colors.red,
                  Colors.purple
             ]),
                 shape: BoxShape.circle),
                 child: Padding(
              //this padding will be you border size
              padding: const EdgeInsets.all(3.0),
              child: Container(
                    decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                          child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.arrow_forward_outlined,
                          color: Colors.blueAccent,),
                     ),
              ),
                 ),
           ),
           ),],
      ),
    );
  }
}
