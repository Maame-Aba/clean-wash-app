// ignore_for_file: prefer_const_constructors

import 'package:clean_wash/views/Payment.dart';
import 'package:clean_wash/views/add_details.dart';
import 'package:clean_wash/views/laundry.dart';
import 'package:flutter/material.dart';

class Pickup_details extends StatefulWidget {
  const Pickup_details({Key? key}) : super(key: key);

  @override
  State<Pickup_details> createState() => _Pickup_detailsState();
}

class _Pickup_detailsState extends State<Pickup_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: (Colors.white),
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Details()));
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: (Colors.black),
            )),
        title: const Text(
          "Pickup Details",
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                "Address",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Adisadel Estates",
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        // borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20)),
                    fillColor: Colors.grey[200],
                    filled: false),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "Pickup Date",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                ),
                Text("October 2022"),
                Icon(Icons.arrow_drop_down_outlined),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1,
              height: MediaQuery.of(context).size.height / 5,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        color: Colors.grey[100],
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("Mon",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("15",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                          )
                        ]),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        color: Colors.grey[100],
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("Tue",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 22)),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("16",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                          )
                        ]),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        color: Colors.grey[100],
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("Wed",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("17",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                          )
                        ]),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        color: Colors.grey[100],
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("Thur",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("18",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                          )
                        ]),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        color: Colors.grey[100],
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("Fri",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("19",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                          )
                        ]),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        color: Colors.grey[100],
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("Sat",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("20",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                          )
                        ]),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        color: Colors.grey[100],
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("Sun",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("21",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                          )
                        ]),
                      ),
                    ],
                  ),

                  //  ] )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text("Pickup Time",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            Container(
              width: MediaQuery.of(context).size.width / 1,
              height: MediaQuery.of(context).size.height / 10,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        color: Colors.grey[100],
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(19),
                            child: Text("12:00pm",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18)),
                          ),
                        ]),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        color: Colors.grey[100],
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(19),
                            child: Text("1:00pm",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18)),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                        ]),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        color: Colors.grey[100],
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(17),
                            child: Text("2:00pm",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18)),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                        ]),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        color: Colors.grey[100],
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(19),
                            child: Text("3:00pm",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18)),
                          ),
                        ]),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        color: Colors.grey[100],
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(19),
                            child: Text("4:00pm",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18)),
                          ),
                        ]),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        color: Colors.grey[100],
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(19),
                            child: Text("5:00pm",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18)),
                          ),
                        ]),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        color: Colors.grey[100],
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(19),
                            child: Text("6:00pm",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18)),
                          ),
                        ]),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        color: Colors.grey[100],
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(19),
                            child: Text("7:00pm",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18)),
                          ),
                        ]),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        color: Colors.grey[100],
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(19),
                            child: Text("8:00pm",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18)),
                          ),
                        ]),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        color: Colors.grey[100],
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(19),
                            child: Text("9:00pm",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18)),
                          ),
                        ]),
                      ),
                    ],
                  ),

                  //  ] )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "Delivery Date",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                ),
                Text("October 2022"),
                Icon(Icons.arrow_drop_down_outlined),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1,
              height: MediaQuery.of(context).size.height / 5,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        color: Colors.grey[100],
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("Mon",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("15",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                          )
                        ]),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        color: Colors.grey[100],
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("Tue",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 22)),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("16",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                          )
                        ]),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        color: Colors.grey[100],
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("Wed",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("17",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                          )
                        ]),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        color: Colors.grey[100],
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("Thur",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("18",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                          )
                        ]),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        color: Colors.grey[100],
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("Fri",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("19",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                          )
                        ]),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        color: Colors.grey[100],
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("Sat",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("20",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                          )
                        ]),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        color: Colors.grey[100],
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("Sun",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("21",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                          )
                        ]),
                      ),
                    ],
                  ),

                  //  ] )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Padding(
                padding: const EdgeInsets.all(30),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blue[600]),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:45),
                      child: Text(
                        "Go for Payment",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Paymentview()));
                  },
                ))
          ]),
        ),
      ]),
    );
  }
}
