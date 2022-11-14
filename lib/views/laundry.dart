// ignore_for_file: prefer_const_constructors

import 'package:clean_wash/views/add_details.dart';
import 'package:clean_wash/views/index_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Laundry_Services_view extends StatefulWidget {
  const Laundry_Services_view({Key? key}) : super(key: key);

  @override
  State<Laundry_Services_view> createState() => _Laundry_Services_viewState();
}

class _Laundry_Services_viewState extends State<Laundry_Services_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: (Colors.white),
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => IndexPage()));
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: (Colors.black),
            )),
        title: Text(
          "Laundry Services",
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text("Select One",
                style: TextStyle(
                  fontSize: 20,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.grey[100],
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Marvin's Dry Wash",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/images/laundry mart.png"))),
                    ),
                    Row(children: [
                      Icon(Icons.timer),
                      Text(
                        "Mon-Fri",
                        style: TextStyle(fontSize: 17),
                      )
                    ]),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.06,
                        ),
                        Text(
                          "8am-6pm",
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                        ),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.grey[100],
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Perfect Clean Wash",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/images/laundry mart.png"))),
                    ),
                    Row(children: [
                      Icon(Icons.timer),
                      Text(
                        "Mon-Fri",
                        style: TextStyle(fontSize: 17),
                      )
                    ]),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.06,
                        ),
                        Text(
                          "8am-6:30pm",
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                        ),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(
                          Icons.star,
                        ),
                        Icon(Icons.star)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.grey[100],
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lucy's Wash",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/images/laundry mart.png"))),
                    ),
                    Row(children: [
                      Icon(Icons.timer),
                      Text(
                        "Mon-Fri",
                        style: TextStyle(fontSize: 17),
                      )
                    ]),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.06,
                        ),
                        Text(
                          "8am-7pm",
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                        ),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star_half, color: Colors.amber),
                        Icon(Icons.star)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.grey[100],
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Exquisite Wash",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/images/laundry mart.png"))),
                    ),
                    Row(children: [
                      Icon(Icons.timer),
                      Text(
                        "Mon-Fri",
                        style: TextStyle(fontSize: 17),
                      )
                    ]),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.06,
                        ),
                        Text(
                          "8am-8pm",
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                        ),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(
                          Icons.star_half,
                          color: Colors.amber,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.grey[100],
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "White Wash",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/images/laundry mart.png"))),
                    ),
                    Row(children: [
                      Icon(Icons.timer),
                      Text(
                        "Mon-Fri",
                        style: TextStyle(fontSize: 17),
                      )
                    ]),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.06,
                        ),
                        Text(
                          "8am-11pm",
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                        ),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
                    padding: const EdgeInsets.all(30),
                    
                        
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blue[600]),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8)))),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text("Continue",
                            style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),  ),
                            ), onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Details()));
                    },
                            )
      )],
      ),
    );
  }
}
