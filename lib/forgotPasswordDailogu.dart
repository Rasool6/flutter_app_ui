import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPasswordDialog {
  void show(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)), //this right here
              child: Container(
                width: MediaQuery.of(context).size.width * .8,
                height: MediaQuery.of(context).size.height * .4,
                decoration: BoxDecoration(
                  color: Colors.white, // Background color
                  borderRadius: BorderRadius.circular(20.0), // Rounded corners
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 24, left: 24),
                        child: Text(
                          "Forgot your password?",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'TypoGraphica',
                              fontSize: 16),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10, left: 24),
                        child: Text(
                          "We will send instructions to change your\npassword on the following email:",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'BG Flame Light',
                              fontSize: 12),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20, left: 24),
                        child: Text(
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
                      Padding(
                        padding:
                            const EdgeInsets.only( left: 24, right: 24),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.85,
                          height: MediaQuery.of(context).size.height * 0.07,
                          decoration: BoxDecoration(
                              color: const Color(0xfff5F9FC),
                              borderRadius: BorderRadius.circular(10)),
                          child: const TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: 'Type your email',
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
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 10),
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child:const Text(
                                    "Cancel",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontFamily: "BG Flame",
                                    ),
                                  )),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 10),
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child:const Text(
                                    "Save",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontFamily: "BG Flame Bold",
                                    ),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ));
        });
  }
}
