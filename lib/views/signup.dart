// ignore_for_file: annotate_overrides, prefer_const_constructors, override_on_non_overriding_member, curly_braces_in_flow_control_structures

import 'package:clean_wash/views/auth.dart';
import 'package:clean_wash/views/homeview.dart';
import 'package:clean_wash/views/index_page.dart';
import 'package:clean_wash/views/sign_in.dart';
import 'package:flutter/material.dart';

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

 Auth creator = Auth();

  @override
  bool obserText = true;

  bool obscurText = true;

  bool isloading = false;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: (Colors.white),
            leading: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignInView()));
                },
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: (Colors.black),
                ))),
        body: ListView(children: [
          Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                  child: Column(children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Text(
                  "WELCOME TO CLEAN WASH",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
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
                      // Align(
                      //   alignment: Alignment.centerLeft,
                      //   child: Text("Full name",
                      //       style: TextStyle(
                      //           color: Colors.black,
                      //           fontSize: 20,
                      //           fontWeight: FontWeight.w500)),
                      // ),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: TextFormField(
                              validator: (value) {
                                if (value!.isEmpty)
                                  return "Full name is required";
                                return null;
                              },
                              decoration: InputDecoration(
                                  labelText: "Full name",
                                  prefixIcon: Icon(Icons.person),
                                  border: OutlineInputBorder(
                                      // borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(12)),
                                  fillColor: Colors.grey[200],
                                  filled: false),
                            ),
                          )),
                      // Align(
                      //     alignment: Alignment.centerLeft,
                      //     child: Text(
                      //       "Email",
                      //       style: TextStyle(
                      //           color: Colors.black,
                      //           fontSize: 20,
                      //           fontWeight: FontWeight.w500),
                      //     )),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
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
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                labelText: "Email",
                                prefixIcon: Icon(Icons.mail_outline),
                                border: OutlineInputBorder(
                                    // borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(12)),
                                fillColor: Colors.grey[200],
                                filled: false),
                          ),
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
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: TextFormField(
                              validator: (value) {
                                if (value!.isEmpty)
                                  return "Phone number is required";
                                return null;
                              },
                              controller: phoneNumberController,
                              // inputFormatters: <TextInputFormatter>[
                              //   FilteringTextInputFormatter.digitsOnly
                              // ],
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                  labelText: "Phone number",
                                  prefixIcon: Icon(Icons.phone),
                                  border: OutlineInputBorder(
                                      // borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(12)),
                                  fillColor: Colors.grey[200],
                                  filled: false),
                            ),
                          )),
                      // Align(
                      //   alignment: Alignment.centerLeft,
                      //   child: Text("Password",
                      //       style: TextStyle(
                      //           color: Colors.black,
                      //           fontSize: 20,
                      //           fontWeight: FontWeight.w500)),
                      // ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) return "Password is required";
                              return null;
                            },
                            controller: passwordController,
                            obscureText: obserText,
                            decoration: InputDecoration(
                                labelText: "Password",
                                prefixIcon: Icon(Icons.lock_outline),
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
                                    borderRadius: BorderRadius.circular(12)),
                                fillColor: Colors.grey[200],
                                filled: false),
                          ),
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
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.blue[600]),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8)))),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                onPressed: () async {
                                    setState(() {
                                          isloading = true;
                                        });
                                        await creator
                                            .createUserWithEmailAndPassword(
                                                email: emailController.text,
                                                password:
                                                    passwordController.text)
                                            .then((value) {
                                          creator.addUser(
                                              userName: fullname.text,
                                              email: emailController.text,
                                              phonenumber: int.parse(
                                                  phoneNumberController.text));
                                          setState(() {
                                            isloading = false;
                                          });
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: ((context) {
                                            return IndexPage();
                                          })));
                                        });
  },
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   // ignore: prefer_const_literals_to_create_immutables
                      //   children: [
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
                      //   ],
                      // ),
                   )) ],
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
                SizedBox(height: MediaQuery.of(context).size.height * 0.0001),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Or",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.005),
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
                InkWell(
                   onTap: (){
                  //          Navigator.push(context,
                  // MaterialPageRoute(builder: (context) =>IndexPage()));
                        },
                  child: Container(
                    height: 50,
                    width: 250,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(8),
                              shape: BoxShape.rectangle),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image: AssetImage(
                                      'assets/images/google icon.png')),
                ),
                        ),
                        Text(
                          "Continue with Google",
                          style: TextStyle(fontSize: 20),
                        )
                
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
                  ),
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.05),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "By continuing, you agree to our Terms of Service",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "and Privacy Policy.",
                      style: TextStyle(fontSize: 15),
                    )
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

button(String name, {required void Function() onTap}) {}

@override
Widget build(BuildContext context) {
  return Scaffold();
}
