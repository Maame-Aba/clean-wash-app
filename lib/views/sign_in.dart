// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:clean_wash/views/auth.dart';
import 'package:clean_wash/views/forgot_password.dart';
import 'package:clean_wash/views/index_page.dart';
import 'package:clean_wash/views/signup.dart';
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
  Auth signin = Auth();
  bool obserText = true;

  bool obscurText = true;

  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.14,
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
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
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
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                      child: TextFormField(
                        keyboardType:TextInputType.emailAddress,
                        controller: emailController,
                        validator: (value) {
                          if (value!.isEmpty) return "Email is required";
                          String pattern = r'^[\w-\.]+@([w-]+\.)+[\w]{2,4}';
                          RegExp regex = RegExp(pattern);
                          if (regex.hasMatch(value))
                            return "Please enter a valid email";

                          return null;
                        },
                        // validator: (value) {
                        //   if (value!.isEmpty 
                        // return "Email is required||
                        //       !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                        //     return "Please enter a valid email";
                        //   }else{
                        //     return null;
                        //   }
                        // },
                        decoration: InputDecoration(
                            hintText: "Email",
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
                  //   child: Text("Password",
                  //       style: TextStyle(
                  //           color: Colors.black,
                  //           fontSize: 20,
                  //           fontWeight: FontWeight.w500)),
                  // ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
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
                            hintText: "Password",
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
                  Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Forgot_passwordView()));
                          },
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                            child: Text("Forgot Password?",
                                style: TextStyle(
                                    color: Colors.blue[600],
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: isloading
                        ? Center(child: CircularProgressIndicator())
                        : ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blue[600]),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8)))),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                "Log in",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            onPressed: () async {
                              if (formkey.currentState!.validate())
                                setState(() {
                                  isloading = true;
                                });
                              await signin
                                  .signInWithEmailAndPassword(
                                      email: emailController.text,
                                      password: passwordController.text)
                                  .then((value) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => IndexPage())));
                                setState(() {
                                  isloading = false;
                                });
                              });
                            }),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      Text(
                        "New here?",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpView()));
                        },
                        child: Text("Register",
                            style: TextStyle(
                                color: Colors.blue[600],
                                fontSize: 15,
                                fontWeight: FontWeight.w500)),
                      )
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
