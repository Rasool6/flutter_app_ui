import 'package:flutter/material.dart';


class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .15),
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                        fontSize: 25,
                        wordSpacing: -2,
                        letterSpacing: -.1,
                        color: Colors.black,
                        fontFamily: 'TypoGraphica'),
                  ),
                ),
              ), //Sing Up header
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
                  "Name",
                  style: TextStyle(
                      wordSpacing: -2,
                      letterSpacing: -.1,
                      fontSize: 16,
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
                    keyboardType: TextInputType.name,
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
                      hintText: 'Type your e-mail',

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
                  "Username",
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
                    keyboardType: TextInputType.text,
                    decoration:  InputDecoration(
                      hintText: 'Username',

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
                  "Mobile No",
                  style: TextStyle(
                      fontSize: 16,
                      wordSpacing: -2,
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
                    keyboardType: TextInputType.phone,
                    decoration:  InputDecoration(
                      hintText: 'Mobile Number',

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
                  "Country",
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
                    keyboardType: TextInputType.name,
                    decoration:  InputDecoration(
                      hintText: 'Country',

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
                      hintText: 'Password',

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
             const Center(
                child: Text(
                  textAlign: TextAlign.center,
                  "Use at least 8 characters with at least one number\none upper case and one lower case letter",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontFamily: 'BG Flame Light',
                      fontWeight: FontWeight.normal),
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  textAlign: TextAlign.center,
                  "OR",
                  style: TextStyle(
                      fontSize: 16,
                    letterSpacing: -.1,
                      color: Colors.black,
                      fontFamily: 'TypoGraphica',
                      ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: MaterialButton(
                  elevation: 0,
                  onPressed: (){


                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                        width: 1,
                        color: Colors.black,
                      )
                  ),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: MediaQuery.of(context).size.height * 0.07,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/ic_google.png",width: 20,height: 20,),
                        ),
                        const Text("Sign up with Google",style:
                        TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontFamily: 'BG Flame Bold'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  textAlign: TextAlign.center,
                  "By continuing you agree to our\nterms and conditions",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontFamily: 'BG Flame Light',
                      fontWeight: FontWeight.normal),
                ),
              ),
              const SizedBox(
                height: 40,
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
                          "Sign Up",
                          style:TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontFamily: 'BG Flame Bold'),
                        )),
                  ),
                ),
              ),

              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
