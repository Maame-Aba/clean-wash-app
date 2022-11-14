// ignore_for_file: prefer_const_constructors

import 'package:clean_wash/views/index_page.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

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
          "Messages",
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: TextFormField(
            decoration: InputDecoration(
                hintText: "Search",
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    // borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15)),
                fillColor: Colors.grey[200],
                filled: false),
          ),
        ),
        ListTile(
          leading: Container(
              height: 50,
              width: 50,
              child: Image.asset("assets/images/Marvin.png")),
          title: Text("Marvin's Dry Wash"),
          subtitle: Text("Your items will be delivered soon",
              style: TextStyle(color: Colors.grey)),
              trailing: CircleAvatar(radius: 12,
                backgroundColor: Colors.blue,
             child: Text("2"),),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        ListTile(
          leading: Container(
              height: 50,
              width: 50,
              child: Image.asset("assets/images/lucy.png")),
          title: Text("Lucy's Laundry"),
          subtitle: Text("Your items will be delivered soon",
              style: TextStyle(color: Colors.grey)),
               trailing: CircleAvatar(radius: 12,
                backgroundColor: Colors.blue,
             child: Text("4"),),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        ListTile(
          leading: Container(
              height: 50,
              width: 50,
              child: Image.asset("assets/images/jay.png")),
          title: Text("Jay's Wash"),
          subtitle: Text("Thank you for trusting us",
              style: TextStyle(color: Colors.grey)),
             trailing: CircleAvatar(radius: 12,
                backgroundColor: Colors.blue,
             child: Text("1"),),
        )
      ]),
    );
  }
}
