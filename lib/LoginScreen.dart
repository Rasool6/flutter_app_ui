import 'package:flutter/material.dart';
import 'package:untitled/forgotPasswordDailogu.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
                body: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * .15),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 25,
                              letterSpacing: -.1,
                              color: Colors.black,
                              fontFamily: 'TypoGraphica'),
                        ),
                      ),
                    ), //Login
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          textAlign: TextAlign.center,
                          "Your email and account information\nwill be protected",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontFamily: 'BG Flame Light',
                              fontWeight: FontWeight.normal),
                        ),
                      ), //detail text
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.08,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.1),
                      child: const Text(
                        "Email",
                        style: TextStyle(
                            fontSize: 16,
                            letterSpacing: -.1,
                            color: Colors.black,
                            fontFamily: 'TypoGraphica'),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        height: MediaQuery.of(context).size.height * 0.07,
                        decoration: BoxDecoration(
                            color: const Color(0xfff5F9FC),
                            borderRadius: BorderRadius.circular(10)),
                        child: const TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration:  InputDecoration(
                            hintText: 'Type your name',
                            hintStyle: TextStyle(
                                fontFamily: 'BG Flame Light',
                                fontSize: 14,
                                color: Color(0xfffa8a8a8),
                            fontWeight: FontWeight.normal),
                            filled: true,
                            fillColor: Colors.transparent,
                            border: InputBorder.none,
                             // Adjust text padding
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.1),
                      child: const Text(
                        "Password",
                        style: TextStyle(
                            fontSize: 16,
                            letterSpacing: -.1,
                            color: Colors.black,
                            fontFamily: 'TypoGraphica'),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        height: MediaQuery.of(context).size.height * 0.07,
                        decoration: BoxDecoration(
                            color: const Color(0xfff5F9FC),
                            borderRadius: BorderRadius.circular(10)),
                        child: const TextField(
                          obscureText: true,
                          decoration:  InputDecoration(
                            hintText: 'Type your password',

                            hintStyle: TextStyle(
                                fontFamily: 'BG Flame Light',
                                fontSize: 14,
                                color: Color(0xfffa8a8a8),

                            fontWeight: FontWeight.normal),
                            filled: true,
                            fillColor: Colors.transparent,
                            border: InputBorder.none,
                             // Adjust text padding
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*0.62),
                      child:  TextButton(
                        onPressed: (){
                          ForgotPasswordDialog().show(context);
                        },
                       child: Text( "Forgot Password?",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontFamily: 'BG Flame Light'),
                         ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: MaterialButton(
                        elevation: 0,
                        onPressed: () {  },
                        color: const Color(0xFFFFD319),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.75,
                          height: MediaQuery.of(context).size.height * 0.06,
                          child:  const Center(
                              child: Text(
                                "Login",
                                style:TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontFamily: 'BG Flame Bold'),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
      ),
    );
  }
}
