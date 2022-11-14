// ignore_for_file: prefer_const_constructors

import 'package:clean_wash/views/laundry.dart';
import 'package:clean_wash/views/pickup_details.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
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
                      builder: (context) => const Laundry_Services_view()));
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: (Colors.black),
            )),
        title: const Text(
          "Add Details",
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
              ListTile(
                leading: Container(
                    height: 100,
                    width: 90,
                    child: Image.asset("assets/images/T-shirt.png")),
                title:  Text("T-Shirt",style: TextStyle(color: Colors.black, fontSize: 20),),
          subtitle: Row(
            children: [
               Text("₵2", style: TextStyle(color: Colors.grey, fontSize: 18)),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              Text("Men",style: TextStyle(color: Colors.grey, fontSize: 18)),
               DropdownButton(items: null, onChanged: (String? newValue) {}),
               SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
                CircleAvatar(
            
                radius: 12,
                backgroundColor: Colors.white,
                child: Text("-",style: TextStyle(color: Colors.black,fontSize: 20),),
              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.03,),
              Text("0",style: TextStyle(color: Colors.black,fontSize: 25),),
              SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.white,
                child: Text("+",style: TextStyle(color: Colors.black,fontSize: 20)),
              ),
            ],
          ),
          
          
             
            
          ),
            SizedBox(height: MediaQuery.of(context).size.height*0.05,),
            ListTile(
                leading: Container(
                    height: 100,
                    width: 90,
                    child: Image.asset("assets/images/Outwear.png")),
                title:  Text("O",style: TextStyle(color: Colors.black, fontSize: 20),),
          subtitle: Row(
            children: [
               Text("₵2", style: TextStyle(color: Colors.grey, fontSize: 18)),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              Text("Men",style: TextStyle(color: Colors.grey, fontSize: 18)),
               DropdownButton(items: null, onChanged: (String? newValue) {}),
               SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
                CircleAvatar(
            
                radius: 12,
                backgroundColor: Colors.white,
                child: Text("-",style: TextStyle(color: Colors.black,fontSize: 20),),
              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.03,),
              Text("0",style: TextStyle(color: Colors.black,fontSize: 25),),
              SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.white,
                child: Text("+",style: TextStyle(color: Colors.black,fontSize: 20)),
              ),
            ],
          ),
          
          
             
            
          ),SizedBox(height: MediaQuery.of(context).size.height*0.05,),
          ListTile(
                leading: Container(
                    height: 100,
                    width: 90,
                    child: Image.asset("assets/images/bottom.png")),
                title:  Text("Bottom",style: TextStyle(color: Colors.black, fontSize: 20),),
          subtitle: Row(
            children: [
               Text("₵2", style: TextStyle(color: Colors.grey, fontSize: 18)),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              Text("Men",style: TextStyle(color: Colors.grey, fontSize: 18)),
               DropdownButton(items: null, onChanged: (String? newValue) {}),
               SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
                CircleAvatar(
            
                radius: 12,
                backgroundColor: Colors.white,
                child: Text("-",style: TextStyle(color: Colors.black,fontSize: 20),),
              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.03,),
              Text("0",style: TextStyle(color: Colors.black,fontSize: 25),),
              SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.white,
                child: Text("+",style: TextStyle(color: Colors.black,fontSize: 20)),
              ),
            ],
          ),
          
          
             
            
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.05,),
            ListTile(
                leading: Container(
                    height: 100,
                    width: 90,
                    child: Image.asset("assets/images/dresses.png")),
                title:  Text("Dresses",style: TextStyle(color: Colors.black, fontSize: 20),),
          subtitle: Row(
            children: [
               Text("₵2", style: TextStyle(color: Colors.grey, fontSize: 18)),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              Text("Men",style: TextStyle(color: Colors.grey, fontSize: 18)),
               DropdownButton(items: null, onChanged: (String? newValue) {}),
               SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
                CircleAvatar(
            
                radius: 12,
                backgroundColor: Colors.white,
                child: Text("-",style: TextStyle(color: Colors.black,fontSize: 20),),
              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.03,),
              Text("0",style: TextStyle(color: Colors.black,fontSize: 25),),
              SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.white,
                child: Text("+",style: TextStyle(color: Colors.black,fontSize: 20)),
              ),
            ],
          ),
          
          
             
            
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.05,),
            ListTile(
                leading: Container(
                    height: 100,
                    width: 90,
                    child: Image.asset("assets/images/Home.png")),
                title:  Text("Home",style: TextStyle(color: Colors.black, fontSize: 20),),
          subtitle: Row(
            children: [
               Text("₵2", style: TextStyle(color: Colors.grey, fontSize: 18)),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              Text("Men",style: TextStyle(color: Colors.grey, fontSize: 18)),
               DropdownButton(items: null, onChanged: (String? newValue) {}),
               SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
                CircleAvatar(
            
                radius: 12,
                backgroundColor: Colors.white,
                child: Text("-",style: TextStyle(color: Colors.black,fontSize: 20),),
              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.03,),
              Text("0",style: TextStyle(color: Colors.black,fontSize: 25),),
              SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.white,
                child: Text("+",style: TextStyle(color: Colors.black,fontSize: 20)),
              ),
            ],
          ),
          
          
             
            
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.05,),
            ListTile(
                leading: Container(
                    height: 100,
                    width: 90,
                    child: Image.asset("assets/images/kente.png")),
                title:  Text("Kente",style: TextStyle(color: Colors.black, fontSize: 20),),
          subtitle: Row(
            children: [
               Text("₵5", style: TextStyle(color: Colors.grey, fontSize: 18)),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              Text("Men",style: TextStyle(color: Colors.grey, fontSize: 18)),
               DropdownButton(items: null, onChanged: (String? newValue) {}),
               SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
                CircleAvatar(
            
                radius: 12,
                backgroundColor: Colors.white,
                child: Text("-",style: TextStyle(color: Colors.black,fontSize: 20),),
              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.03,),
              Text("0",style: TextStyle(color: Colors.black,fontSize: 25),),
              SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.white,
                child: Text("+",style: TextStyle(color: Colors.black,fontSize: 20)),
              ),
            ],
          ),
          
          
             
            
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.05,),
            ListTile(
                leading: Container(
                    height: 100,
                    width: 90,
                    child: Image.asset("assets/images/blanket.png")),
                title:  Text("Blankets",style: TextStyle(color: Colors.black, fontSize: 20),),
          subtitle: Row(
            children: [
               Text("₵5", style: TextStyle(color: Colors.grey, fontSize: 18)),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              Text("Men",style: TextStyle(color: Colors.grey, fontSize: 18)),
               DropdownButton(items: null, onChanged: (String? newValue) {}),
               SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
                CircleAvatar(
            
                radius: 12,
                backgroundColor: Colors.white,
                child: Text("-",style: TextStyle(color: Colors.black,fontSize: 20),),
              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.03,),
              Text("0",style: TextStyle(color: Colors.black,fontSize: 25),),
              SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.white,
                child: Text("+",style: TextStyle(color: Colors.black,fontSize: 20)),
              ),
            ],
          ),
          
          
             
            
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.05,),
            ListTile(
                leading: Container(
                    height: 100,
                    width: 90,
                    child: Image.asset("assets/images/bedsheet.png")),
                title:  Text("Bedsheet",style: TextStyle(color: Colors.black, fontSize: 20),),
          subtitle: Row(
            children: [
               Text("₵2", style: TextStyle(color: Colors.grey, fontSize: 18)),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              Text("Men",style: TextStyle(color: Colors.grey, fontSize: 18)),
               DropdownButton(items: null, onChanged: (String? newValue) {}),
               SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
                CircleAvatar(
            
                radius: 12,
                backgroundColor: Colors.white,
                child: Text("-",style: TextStyle(color: Colors.black,fontSize: 20),),
              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.03,),
              Text("0",style: TextStyle(color: Colors.black,fontSize: 25),),
              SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.white,
                child: Text("+",style: TextStyle(color: Colors.black,fontSize: 20)),
              ),
            ],
          ),
          
          
             
            
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.05,),
            ListTile(
                leading: Container(
                    height: 100,
                    width: 90,
                    child: Image.asset("assets/images/carpet.png")),
                title:  Text("Carpet",style: TextStyle(color: Colors.black, fontSize: 20),),
          subtitle: Row(
            children: [
               Text("₵7", style: TextStyle(color: Colors.grey, fontSize: 18)),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              Text("Men",style: TextStyle(color: Colors.grey, fontSize: 18)),
               DropdownButton(items: null, onChanged: (String? newValue) {}),
               SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
                CircleAvatar(
            
                radius: 12,
                backgroundColor: Colors.white,
                child: Text("-",style: TextStyle(color: Colors.black,fontSize: 20),),
              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.03,),
              Text("0",style: TextStyle(color: Colors.black,fontSize: 25),),
              SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.white,
                child: Text("+",style: TextStyle(color: Colors.black,fontSize: 20)),
              ),
            ],
          ),
          
          
             
            
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.05,),
            ListTile(
                leading: Container(
                    height: 100,
                    width: 90,
                    child: Image.asset("assets/images/pillows.png")),
                title:  Text("Pillow cases",style: TextStyle(color: Colors.black, fontSize: 20),),
          subtitle: Row(
            children: [
               Text("₵2", style: TextStyle(color: Colors.grey, fontSize: 18)),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              Text("Men",style: TextStyle(color: Colors.grey, fontSize: 18)),
               DropdownButton(items: null, onChanged: (String? newValue) {}),
               SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
                CircleAvatar(
            
                radius: 12,
                backgroundColor: Colors.white,
                child: Text("-",style: TextStyle(color: Colors.black,fontSize: 20),),
              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.03,),
              Text("0",style: TextStyle(color: Colors.black,fontSize: 25),),
              SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.white,
                child: Text("+",style: TextStyle(color: Colors.black,fontSize: 20)),
              ),
            ],
          ),
          
          
             
            
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.05,),
            ListTile(
                leading: Container(
                    height: 100,
                    width: 90,
                    child: Image.asset("assets/images/towel.jpg")),
                title:  Text("Towels",style: TextStyle(color: Colors.black, fontSize: 20),),
          subtitle: Row(
            children: [
               Text("₵5", style: TextStyle(color: Colors.grey, fontSize: 18)),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              Text("Men",style: TextStyle(color: Colors.grey, fontSize: 18)),
               DropdownButton(items: null, onChanged: (String? newValue) {}),
               SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
                CircleAvatar(
            
                radius: 12,
                backgroundColor: Colors.white,
                child: Text("-",style: TextStyle(color: Colors.black,fontSize: 20),),
              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.03,),
              Text("0",style: TextStyle(color: Colors.black,fontSize: 25),),
              SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.white,
                child: Text("+",style: TextStyle(color: Colors.black,fontSize: 20)),
              ),
            ],
          ),
          
          
             
            
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.05,),
            ListTile(
                leading: Container(
                    height: 100,
                    width: 90,
                    child: Image.asset("assets/images/bag.png")),
                title:  Text("Bags",style: TextStyle(color: Colors.black, fontSize: 20),),
          subtitle: Row(
            children: [
               Text("₵10", style: TextStyle(color: Colors.grey, fontSize: 18)),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              Text("Men",style: TextStyle(color: Colors.grey, fontSize: 18)),
               DropdownButton(items: null, onChanged: (String? newValue) {}),
               SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
                CircleAvatar(
            
                radius: 12,
                backgroundColor: Colors.white,
                child: Text("-",style: TextStyle(color: Colors.black,fontSize: 20),),
              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.03,),
              Text("0",style: TextStyle(color: Colors.black,fontSize: 25),),
              SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.white,
                child: Text("+",style: TextStyle(color: Colors.black,fontSize: 20)),
              ),
            ],
          ),
          
          
             
            
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.05,),
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
                              child: Text("Done",
                            style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),  ),
                            ), onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Pickup_details()));
                    },
                            )
      )
            
        ],
      ),
    );
  }
}
