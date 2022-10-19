// ignore_for_file: annotate_overrides, prefer_const_constructors, override_on_non_overriding_member

import 'package:flutter/material.dart';



import 'forgot_password.dart';

class SignUpView extends StatefulWidget {
  SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController fullname = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  // Auth signin = Auth();

  @override
  bool obserText = true;

  bool obscurText = true;

  bool isloading = false;

  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Padding(
          padding: const EdgeInsets.all(13),
          child: Center(
              child: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              "WELCOME TO CLEAN WASH",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),

            Text(
              "Sign up to get started",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Full name",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500)),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) return "Full name is required";
                          return null;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                // borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10)),
                            fillColor: Colors.grey[200],
                            filled: false),
                      )),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Email",
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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Phone Number",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500)),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) return "Phone number is required";
                          return null;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                // borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10)),
                            fillColor: Colors.grey[200],
                            filled: false),
                      )),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Password",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) return "Password is required";
                        return null;
                      },
                      controller: passwordController,
                      obscureText: obserText,
                      decoration: InputDecoration(
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                obserText = !obserText;
                              });
                            },
                            child: Icon(obserText == true
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                          border: OutlineInputBorder(
                              // borderSide: BorderSide,
                              borderRadius: BorderRadius.circular(10)),
                          fillColor: Colors.grey[200],
                          filled: false),
                    ),
                  ),
                  // Align(
                  //   alignment: Alignment.centerRight,
                  //   child: Text("Forgot Password?",
                  //       style: TextStyle(
                  //           color: Colors.blue[900],
                  //           fontSize: 15,
                  //           fontWeight: FontWeight.w500)),
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(35),
                    child: isloading
                        ? Center(child: CircularProgressIndicator())
                        : ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blue[900]),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)))),
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () async {
                              setState(() {
                                isloading = true;
                              });
                            },
                          ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      // Checkbox(
                      //     value: onChecked,
                      //     onChanged: (newValue) {
                      //       setState(() {
                      //         onChecked = !onChecked;
                      //       });
                      //     }),
                      // Text(
                      //   "Remember",
                      //   style: TextStyle(
                      //     color: Colors.grey[600],
                      //   ),
                      // ),
                      // SizedBox(
                      //     height: MediaQuery.of(context).size.height * 0.03),
                      // Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //     children: [
                      //       TextButton(
                      //           onPressed: () {
                      //             Navigator.push(
                      //                 context,
                      //                 MaterialPageRoute(
                      //                     builder: (context) =>
                      //                         Forgot_passwordView()));
                      //           },
                      //           // child: Text(
                      //           //   "Forgot password?",
                      //           //   style: TextStyle(color: Colors.grey),
                      //           )
                      //     ]),
                    ],
                  ),
                ],
              ),
            ),

            // button(
            //   "Sign In",
            //   onTap: () async {
            //     // Navigator.push(
            //     //     context,
            //     //     MaterialPageRoute(
            //     //         builder: (context) => ProfileView()));
            //   },
            // ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.009),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Or",
                 style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            // Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            // SizedBox(
            //   height: 50,
            //   width: 150,
            //   child: ElevatedButton.icon(
            //       style: ButtonStyle(
            //         elevation: MaterialStateProperty.all(0),
            //         side: MaterialStateProperty.all(
            //             BorderSide(color: Colors.black)),
            //       ),
            //       onPressed: () {},
            //       icon: Icon(Icons.face),
            //       label: Text(
            //         "Apple",
            //         style: TextStyle(color: Colors.black),
            //       )),
            // ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     SizedBox(
            //       height: 50,
            //       width: 150,
            //       child: ElevatedButton.icon(
            //           style: ButtonStyle(
            //             elevation: MaterialStateProperty.all(0),
            //             side: MaterialStateProperty.all(
            //                 BorderSide(color: Colors.black)),
            //           ),
            //           onPressed: () {},
            //           icon: Icon(
            //             Icons.facebook,
            //             color: Colors.blue,
            //           ),
            //           label: Text(
            //             "Facebook",
            //             style: TextStyle(color: Colors.black),
            //           )),
            //     )
            //   ],
            // ),i
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 50,
                  width: 400,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(8),
                        shape: BoxShape.rectangle),
                    child: TextButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.g_mobiledata),
                        label: Text("Continue with Google",
                            style: TextStyle(color: Colors.black))),
                  ),
                ),
                // SizedBox(
                //   height: 50,
                //   width: 150,
                //   child: Container(
                //     decoration: BoxDecoration(
                //         border: Border.all(
                //           color: Colors.grey,
                //         ),
                //         borderRadius: BorderRadius.circular(8),
                //         shape: BoxShape.rectangle),
                //     child: TextButton.icon(
                //         onPressed: () {},
                //         icon: Icon(Icons.facebook),
                //         label: Text("Facebook",
                //             style: TextStyle(color: Colors.black))),
                //   ),
                // )
              ],
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.01),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "By continuing, you agree to our Terms of Service and read our Privacy Policy.",
                  style: TextStyle(fontSize: 10),
                ),
                IconButton(
                    onPressed: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => SignUpView()));
                    },
                    icon: Icon(Icons.arrow_forward))
              ],
            ),
          ])))
    ]));
  }

  // ElevatedButton button(String name, {required void Function() onTap}) {
  //   return ElevatedButton(
  //     onPressed: onTap,
  //     child: Padding(
  //           padding: const EdgeInsets.symmetric(horizontal: 100),
  //         //   child: Padding(
  //         //     padding: const EdgeInsets.symmetric(vertical: 10.0),
  //         //     child: Text(
  //         //       "Continue with Google",
  //         //       style: TextStyle(
  //         //           fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),
  //         //     ),
  //         //   ),
  //         // ),
  //         // style:
  //         // ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.transparent)),
  //         ),
  //   );
  }
  
  button(String name,{required void Function() onTap}) {

  }


@override
Widget build(BuildContext context) {
  return Scaffold();
}
