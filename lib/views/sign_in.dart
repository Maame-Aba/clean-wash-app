// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:clean_wash/views/forgot_password.dart';
import 'package:flutter/material.dart';

class SignInView extends StatefulWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  final formkey = GlobalKey<FormState>();

  bool obserText = true;

  bool obscurText = true;

  bool isloading = false;

  @override
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
              "WELCOME BACK",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              "Log in to get access",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
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
                                    onTap:() {
                      setState(() {
                       obserText = !obserText;
                      });
                                    },
                        child: Icon(
                            obserText == true
                            ?Icons.visibility_off
                           : Icons.visibility),
                         
                        ),
                          border: OutlineInputBorder(
                              // borderSide: BorderSide,
                              borderRadius: BorderRadius.circular(10)),
                          fillColor: Colors.grey[200],
                          filled: false),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    
                    child: Row(
                      children: [
                         TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Forgot_passwordView()));
                                },
                        child: Text("Forgot Password?",
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 15,
                                fontWeight: FontWeight.w500)),
                     ) ],
                    ),
                  ),
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
                            child: Text("Log In"),
                            onPressed: () async {
                              setState(() {
                                isloading = true;
                              });
                              
                            },
                          ),
                          
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height * 0.05,
                                    ),
                     
                              Text("New here?",
                               style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                            ),
                            Text("Register",
                            style: TextStyle(
                            color: Colors.blue[900],
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                             ],
                    ),
                  
                ],
              ),
            ),
          ]),
        ),
      )
    ]));
  }
}
