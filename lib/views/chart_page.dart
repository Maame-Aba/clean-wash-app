// ignore_for_file: prefer_const_constructors

import 'package:clean_wash/views/index_page.dart';
import 'package:flutter/material.dart';

class ChartPage extends StatelessWidget {
  const ChartPage({Key? key}) : super(key: key);

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
          "Chart",
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          ListTile(
            leading: Container(
                height: 50,
                width: 50,
                child: Image.asset("assets/images/Marvin.png")),
            title: Text("Marvin's Dry Wash"),
            subtitle: Text("Dry Cleaning booked for 20th November,2022",
                style: TextStyle(color: Colors.grey)),
          ),
          ListTile(
            leading: Container(
                height: 50,
                width: 50,
                child: Image.asset("assets/images/jay.png")),
            title: Text("Jay's Wash"),
            subtitle: Text("Steam press booked for 18th November,2022",
                style: TextStyle(color: Colors.grey)),
          ),
        ],
      ),
    );
  }
}
