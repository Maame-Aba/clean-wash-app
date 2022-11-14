// ignore_for_file: prefer_const_constructors

import 'package:clean_wash/views/index_page.dart';
import 'package:clean_wash/views/laundry.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        //   Navigator.push(context,
                        //       MaterialPageRoute(builder: (context) => SignInView()));
                      },
                      icon: Icon(
                        Icons.location_on,
                        color: (Colors.blue[600]),
                      )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Address",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Cape Coast, Ghana",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.35),
                  Container(
                    child: Icon(Icons.search_outlined),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(8),
                        shape: BoxShape.rectangle),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                  Container(
                    child: Icon(Icons.notifications),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(8),
                        shape: BoxShape.rectangle),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  color: Colors.blue[100],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            
                            Text(
                              "Flat 10% off",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500),
                            ),
                            Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  "On First Order",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.07),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.contain,
                                          image: AssetImage(
                                              "assets/images/first1.png"))),
                                ),
                                Container(
                                  height: 70,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              "assets/images/second2.png"))),
                                ),
                              ],
                            ),
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/images/third3.png"))),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Services",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 23,
                        fontWeight: FontWeight.w200),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1,
                height: MediaQuery.of(context).size.height / 3.3,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: (){
                           Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Laundry_Services_view()));
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          color: Colors.grey[100],
                          child: Column(
                            children: [
                              Container(
                                height: 200,
                                width: 150,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/images/laundry.png"))),
                              ),
                              Text("Laundry",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 23,
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap:  (){
                           Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Laundry_Services_view()));
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          color: Colors.grey[100],
                          child: Column(
                            children: [
                              Container(
                                height: 200,
                                width: 150,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/images/wash and fold.png"))),
                              ),
                              Text("Wash and fold",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 23,
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap:  (){
                           Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Laundry_Services_view()));
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          color: Colors.grey[100],
                          child: Column(
                            children: [
                              Container(
                                height: 200,
                                width: 230,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/images/wash and iron.png"))),
                              ),
                              Text("Wash and iron",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 23,
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: (){
                           Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Laundry_Services_view()));
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          color: Colors.grey[100],
                          child: Column(
                            children: [
                              Container(
                                height: 200,
                                width: 150,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/images/steam press.png"))),
                              ),
                              Text("Steam press",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 23,
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap:  (){
                           Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Laundry_Services_view()));
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          color: Colors.grey[100],
                          child: Column(
                            children: [
                              Container(
                                height: 200,
                                width: 150,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/images/dry cleaning.png"))),
                              ),
                              Text("Dry Cleaning",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 23,
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: (){
                           Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Laundry_Services_view()));
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          color: Colors.grey[100],
                          child: Column(
                            children: [
                              Container(
                                height: 200,
                                width: 150,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/images/starching.png"))),
                              ),
                              Text("Starching",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 23,
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Your active orders",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 23,
                            fontWeight: FontWeight.w200)),
                  ),
                ],
              ),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                color: Colors.grey[50],
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/order.png"))),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Order No.154",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.w400)),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02),
                        Text("Orders Confirmed",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 18,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.06),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("GH₵100.00",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w400)),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02),
                        Text("24 AUG 2022",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.w400)),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
