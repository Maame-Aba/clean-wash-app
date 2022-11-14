// ignore_for_file: prefer_const_constructors
import 'package:clean_wash/views/index_page.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
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
          "Orders",
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(scrollDirection: Axis.vertical, children: [
        ListTile(
          leading: Container(
              height: 50,
              width: 50,
              child: Image.asset("assets/images/list.png")),
          title: Text("Order is accepted"),
          trailing: Container(
              height: 50,
              width: 50,
              child: Image.asset("assets/images/green tick.png")),
        ),
        ListTile(
          leading: Container(
              height: 50,
              width: 50,
              child: Image.asset("assets/images/pickup.png")),
          title: Text("Order is being picked up"),
          trailing: Container(
              height: 50,
              width: 50,
              child: Image.asset("assets/images/green tick.png")),
        ),
        ListTile(
          leading: Container(
              height: 50,
              width: 50,
              child: Image.asset("assets/images/delivery guy.png")),
          title: Text("Order is on the way"),
          trailing: Container(
              height: 28,
              width: 50,
              child: Image.asset("assets/images/grey tick.png")),
        ),
           SizedBox(height: MediaQuery.of(context).size.height * 0.06),
        Card(
          color: Colors.grey[200],
          child: Column(
            children: [
              Text("#AHJ4587"),
              Text("WASHING AND IRONING", style: TextStyle(color: Colors.red)),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Date and Time",
                    style: TextStyle(color: Colors.grey)),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.06),
                    Text("29 AUG 2022, 8:55AM")
                  ],
                ),
              ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  Text("Status",
                  style: TextStyle(color: Colors.grey)),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.4),
                  Text("Delivery", style: TextStyle(color: Colors.red))
                ]),
              ),
               SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Pickup Address",
                    style: TextStyle(color: Colors.grey)),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.04),
                    Text("29 AUG 2022, 8:55AM"),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.04),
                    Text("Adisadel Estates"),
                  ],
                ),
              ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Sub Total",
                    style: TextStyle(color: Colors.grey)),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.4),
                    Text("GH₵25.00"),
                     ],
                ),
              ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Delivery",
                    style: TextStyle(color: Colors.grey)),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.4),
                    Text("GH₵5.00")
                  ],
                ),
              ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                 Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Delivery",
                    style: TextStyle(color: Colors.grey)),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.4),
                    Text("GH₵30.00",style: TextStyle(color: Colors.red)
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
