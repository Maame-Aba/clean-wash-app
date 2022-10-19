// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, camel_case_types

import 'package:flutter/material.dart';

class Forgot_passwordView extends StatelessWidget {
   Forgot_passwordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(13),
          child: Center(
            child: Column(
              children: [
                
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0,10,0,5),
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,0,0,45),
                  child: Align(
                    alignment:Alignment.topLeft,
                    child: Text(
                      "Select which contact details should we use to reset your password",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                      ),
                    ),
                    
                  ),
                ),
                  Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                child: Form(
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.14,
                        width: MediaQuery.of(context).size.width * 1,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(8),
                            shape: BoxShape.rectangle),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text("Email"),
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                    hintText: "ahmedtanvir687@gmail.com",
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    )),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                child: Form(
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.14,
                        width: MediaQuery.of(context).size.width * 1,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(8),
                            shape: BoxShape.rectangle),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text("Phone Number"),
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                    hintText: "+880 1787134897",
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    )),
                              )
                            ],
                          ),
                        ),
                      ),
                       Padding(
                         padding: const EdgeInsets.fromLTRB(0,30,0,10),
                         child: button("Continue"),
                       )
                    ],
                  ),
                ),
              ),
              ],
                  ),
          ),
        ),
        ],
      ),    
    );
  }
  ElevatedButton button(String name) {
  return ElevatedButton(
    onPressed: () {},
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:10),
        child: Text(
          "Continue",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    ),
    style:
        ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black)),
  );
}

}
