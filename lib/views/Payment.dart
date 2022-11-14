// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:clean_wash/views/orders.dart';
import 'package:clean_wash/views/pickup_details.dart';
import 'package:flutter/material.dart';

class Paymentview extends StatefulWidget {
  const Paymentview({Key? key}) : super(key: key);

  @override
  State<Paymentview> createState() => _PaymentviewState();
}

class _PaymentviewState extends State<Paymentview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: (Colors.white),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Pickup_details()));
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: (Colors.black),
            )),
        title: const Text(
          "Payment",
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            children: [
              Text(
                "Subtotal",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
              ),
              Text("GH₵30.00")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            children: [
              Text("Tax", style: TextStyle(color: Colors.grey, fontSize: 20)),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
              ),
              Text("GH₵5.00"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            children: [
              Text("Total Pay",
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.37,
              ),
              Text("GH₵35.00"),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Padding(
          padding: const EdgeInsets.all(14),
          child: Text("Payment Method",
              style: TextStyle(color: Colors.black, fontSize: 20)),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Container(
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height / 7,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              Row(
                children: [
                  Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    color: Colors.grey[300],
                    child: Container(
                      height: 70,
                      width: 70,
                    child: Align(alignment: Alignment.center,
                      child: Text("+",
                          style: TextStyle(color: Colors.black, fontSize: 70)),
                    ),
                   ) ),
                  SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
                  Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    color: Colors.grey[300],
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/images/apple.png"))),
                    ),
                  ),
                  SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
                    Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    color: Colors.grey[300],
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage(
                                  "assets/images/visa.png"))),
                    ),
                  ),
                  SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
                    Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    color: Colors.grey[300],
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage(
                                  "assets/images/mastercard.png"))),
                    ),
                  ),
                  SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
                    Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    color: Colors.grey[300],
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/images/paypal.png"))),
                    ),
                  ),
                                 
                ],
              ),
            ]),
          ),
        ),
                          SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
           Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10,5,10,10),
                      child: TextFormField(
                         decoration: InputDecoration(
                          hintText:"Card holder name",
                          // prefixIcon: Icon(Icons.lock_outline),
                            border: OutlineInputBorder(
                                // borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(12)),
                            fillColor: Colors.grey[200],
                            filled: false),
                      ),
                    ),
                  ),
                     Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10,5,10,10),
                      child: TextFormField(
                          keyboardType: TextInputType.text,
                         decoration: InputDecoration(
                          hintText:"Card holder number",
                          // prefixIcon: Icon(Icons.lock_outline),
                            border: OutlineInputBorder(
                                // borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(12)),
                            fillColor: Colors.grey[200],
                            filled: false),
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
                              child: Text("Confirm",
                            style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),  ),
                            ), onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => OrderPage()));
                    },
                            ))
      ]),
    );
  }
}
