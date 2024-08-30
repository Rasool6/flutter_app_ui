import 'package:flutter/material.dart';


class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 32,left: 24),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                        Image.asset("assets/back.png",width:  24,height:  24,),

                           Padding(
                             padding: const EdgeInsets.only(top: 0,left: 16),
                             child: Text("Profile",style: TextStyle(fontSize: 32,color: Colors.black,fontFamily: 'TypoGraphica'),),
                           ),
                         ],
                       ),
                     ),

///////////////////////////top header//////////////////////////
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.1,
                  left: MediaQuery.of(context).size.width * 0.1
              ),
              child: const Text(
                "Full name",
                style: TextStyle(
                    fontSize: 16,
                    wordSpacing: -2,
                    letterSpacing: -.1,
                    color: Colors.black45,
                    fontFamily: 'BG Flame Bold'),
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
                  // obscureText: true,
                  keyboardType: TextInputType.name,
                  decoration:  InputDecoration(
                    hintText: 'Full name',

                    hintStyle: TextStyle(
                        wordSpacing: -2,
                        fontFamily: 'BG Flame Bold',
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
                  top: MediaQuery.of(context).size.width * 0.001,
                  left: MediaQuery.of(context).size.width * 0.1
              ),
              child: const Text(
                "Nick name",
                style: TextStyle(
                    fontSize: 16,
                    wordSpacing: -2,
                    letterSpacing: -.1,
                    color: Colors.black45,
                    fontFamily: 'BG Flame Bold'),
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
                  // obscureText: true,
                  keyboardType: TextInputType.name,
                  decoration:  InputDecoration(
                    hintText: 'Nick name',

                    hintStyle: TextStyle(
                        fontFamily: 'BG Flame Light',
                        fontSize: 14,
                        wordSpacing: -2,
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
                  top: MediaQuery.of(context).size.width * 0.001,
                  left: MediaQuery.of(context).size.width * 0.1
              ),
              child: const Text(
                "Label",
                style: TextStyle(
                    fontSize: 16,
                    wordSpacing: -2,
                    letterSpacing: -.1,
                    color: Colors.black45,
                    fontFamily: 'BG Flame Bold'),
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
                  // obscureText: true,
                  keyboardType: TextInputType.name,
                  decoration:  InputDecoration(
                    hintText: 'kk0220091@gmail.com',

                    hintStyle: TextStyle(
                        fontFamily: 'BG Flame Light',
                        fontSize: 14,
                        wordSpacing: -2,
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
              padding: const EdgeInsets.only(top: 1.0,left: 32),
              child: Column(
                children: [
                  // Phone Number Row
                  Row(
                    children: [
                      Image.asset(
                        "assets/usa_flg.png",
                        width: 40,
                        height: 40,
                      ),
                      SizedBox(width: 8),
                    const  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Phone number",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black45,
                              fontFamily: 'BG Flame Bold',
                            ),
                          ),
                          Text(
                            "077 888374745",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                              fontFamily: 'BG Flame Light',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                 const SizedBox(height: 20), // Space between rows
                  // Country and Genre Row
                  Row(
                    children: [
                      // Country Dropdown
                      Expanded(
                        child: Container(
                          padding:  EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(8),
                            // boxShadow: [
                              // BoxShadow(
                              //   color: Colors.black12,
                              //   blurRadius: 6,
                              // ),
                            // ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Country",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black45,
                                ),
                              ),
                              DropdownButton<String>(
                                value: 'United States',
                                underline: SizedBox(),
                                items: <String>['United States', 'Canada', 'Mexico']
                                    .map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      // Genre Field
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                                "Genre",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black45,
                                    fontFamily: 'BG Flame Bold'
                              ),
                            ),
                            Text(
                                "Male",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontFamily: 'BG Flame Bold'
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 30,
            ),


            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.001,
                  left: MediaQuery.of(context).size.width * 0.1
              ),
              child: const Text(
                "Address",
                style: TextStyle(
                    fontSize: 16,
                    wordSpacing: -2,
                    letterSpacing: -.1,
                    color: Colors.black45,
                    fontFamily: 'BG Flame Bold'),
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
                  // obscureText: true,
                  keyboardType: TextInputType.name,
                  decoration:  InputDecoration(
                    hintText: 'Hangu,Darband, Pakistan etc',

                    hintStyle: TextStyle(
                        fontFamily: 'BG Flame Light',
                        fontSize: 14,
                        wordSpacing: -2,
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
                  top: MediaQuery.of(context).size.width * 0.001,
                  left: MediaQuery.of(context).size.width * 0.1
              ),
              child: const Text(
                "Profession",
                style: TextStyle(
                    fontSize: 16,
                    wordSpacing: -2,
                    letterSpacing: -.1,
                    color: Colors.black45,
                    fontFamily: 'BG Flame Bold'),
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
                  // obscureText: true,
                  keyboardType: TextInputType.name,
                  decoration:  InputDecoration(
                    hintText: 'Doctor',

                    hintStyle: TextStyle(
                        fontFamily: 'BG Flame Light',
                        fontSize: 14,
                        wordSpacing: -2,
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
                  top: MediaQuery.of(context).size.width * 0.001,
                  left: MediaQuery.of(context).size.width * 0.1
              ),
              child: const Text(
                "Place of worship",
                style: TextStyle(
                    fontSize: 16,
                    wordSpacing: -2,
                    letterSpacing: -.1,
                    color: Colors.black45,
                    fontFamily: 'BG Flame Bold'),
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
                  // obscureText: true,
                  keyboardType: TextInputType.name,
                  decoration:  InputDecoration(
                    hintText: 'ELM',

                    hintStyle: TextStyle(
                        fontFamily: 'BG Flame Light',
                        fontSize: 14,
                        wordSpacing: -2,
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
            Center(
              child: MaterialButton(
                elevation: 0,
                onPressed: () {
                 },
                color: const Color(0xFFFFD319),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.75,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child:  const Center(
                      child: Text(
                        "SAVE",
                        style:TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontFamily: 'BG Flame Bold'),
                      )),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}


////
