// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, camel_case_types, must_be_immutable, curly_braces_in_flow_control_structures

import 'package:clean_wash/views/sign_in.dart';
import 'package:flutter/material.dart';

class Forgot_passwordView extends StatelessWidget {
   Forgot_passwordView({Key? key}) : super(key: key);
    TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        elevation: 0,
        backgroundColor: (Colors.white),
        leading: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignInView()));
                    },
                    icon: Icon(Icons.arrow_back_ios_new_rounded,
                    color: (Colors.blue[600]),)),
                    title: Text("Forgot Password?",
                      style: TextStyle(
                          color: Colors.blue[600],
                          fontSize: 24,
                          fontWeight: FontWeight.bold),),), 
        
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(13),
          child: Center(
            child: Column(
              children: [
                
                // Align(
                //   alignment: Alignment.topLeft,
                //   child: Padding(
                //     padding: const EdgeInsets.fromLTRB(0,10,0,0),
                //     child: Text(
                //       "Forgot Password",
                //       style: TextStyle(
                //           color: Colors.black,
                //           fontSize: 24,
                //           fontWeight: FontWeight.bold),
                //     ),
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(0,0,0,40),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                   Align(
                    alignment:Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                      child: Text(
                        "We'll send you password reset instructions",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                        ),
                      ),
                    ),
                    
                  ),
                
                  Padding(
                padding: const EdgeInsets.fromLTRB(10, 45, 10, 45),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                 children: [
                     Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Enter your Email Address",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      )),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: TextFormField(
                      controller: emailController,
                      validator: (value) {
                        if (value!.isEmpty) return "Email is required";
                        String pattern = r'\w+@\.w+';
                        RegExp regex = RegExp(pattern);
                        if (!regex.hasMatch(value))
                          return "Please enter a valid email";
                        return null;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              // borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10)),
                          fillColor: Colors.grey[200],
                          filled: false),
                    ),
                  ),
                  // Align(
                  //   alignment: Alignment.centerLeft,
                  //   child: Text("Phone Number",
                  //       style: TextStyle(
                  //           color: Colors.black,
                  //           fontSize: 20,
                  //           fontWeight: FontWeight.w500)),
                  // ),
                  // Padding(
                  //     padding: const EdgeInsets.symmetric(vertical: 10),
                  //     child: TextFormField(
                  //       validator: (value) {
                  //         if (value!.isEmpty) return "Phone number is required";
                  //         return null;
                  //       },
                  //       decoration: InputDecoration(
                  //           border: OutlineInputBorder(
                  //               // borderSide: BorderSide.none,
                  //               borderRadius: BorderRadius.circular(10)),
                  //           fillColor: Colors.grey[200],
                  //           filled: false),
                  //     )),
                       Padding(
                         padding: const EdgeInsets.fromLTRB(0,30,0,10),
                         child: button("Send"),
                       )
                    
                 ])
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
    // ignore: sort_child_properties_last
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:10),
        child: Text(
          "Send",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    ),
    style:
        ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue[600])),
  );
}

}
