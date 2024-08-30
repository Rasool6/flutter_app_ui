import 'package:flutter/material.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          //top header container
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * .085),
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width * .9,
                height: MediaQuery.of(context).size.height * .15,
                decoration: BoxDecoration(
                    color: Color(0xff32776C),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    Column(
                      children: [
                        //top header text 1
                        Padding(
                          padding: EdgeInsets.only(top: 24.0, left: 24.0),
                          child: Text(
                            "Chain of Deeds",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontFamily: 'BG Flame',
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        //top header text 2
                        Padding(
                          padding: EdgeInsets.only(top: 10.0, left: 20.0),
                          child: Container(
                            width: 110,
                            height: 35,
                              decoration: BoxDecoration(
                                  color: Color(0xffFAD121),
                                  borderRadius: BorderRadius.circular(10)),

                              child: Center(
                                child: Text(
                            "Share Link",
                            style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontFamily: 'BG Flame',
                                  fontWeight: FontWeight.w700),
                          ),
                              )),
                        )
                      ],
                    )
                    //  column 2 header texts
                    ,

                     Padding(
                       padding: EdgeInsets.only(top: 24.0, right: 24.0),
                       child: Column(
                        children: [
                          //top header text 1
                          Text(
                            "You are Number",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontFamily: 'BG Flame Light',
                               ),
                          ),
                          //top header text 2
                          Text(
                            "140",
                            style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                                fontFamily: 'BG Flame',
                                fontWeight: FontWeight.w700),
                          )
                        ],
                    ),
                     )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * .9,
            height: MediaQuery.of(context).size.height * .15,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(  left: 24.0),
                  child: Text(
                    "Current Chain Number",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: 'BG Flame',
                        fontWeight: FontWeight.w700),
                  ),
                ),
                //  column 2 header texts,
                Padding(
                  padding: EdgeInsets.only(right: 24.0),
                  child:  Text(
                    "140",
                    style: TextStyle(
                        fontSize: 50,
                        color: Color(0xff2366B5),
                        fontFamily: 'BG Flame',
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * .9,
            height: MediaQuery.of(context).size.height * .45,
            decoration: BoxDecoration(
                color: Color(0xffFFD319),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only( top:10,left: 24.0),
                  child: Text(
                    "10K ACRE - 100K MEMBERS\nMILESTONE",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height*0.028,
                        letterSpacing: 1.5,
                         color: Color(0xff292524),
                        fontFamily: 'TypoGraphica',
                        fontWeight: FontWeight.w700),
                  ),
                ),
                //  column 2 header texts,
                Padding(
                  padding: EdgeInsets.only(top: 16, left: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "100K MEMBER",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff292524),
                                fontFamily: 'BG Flame Light',
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "TARGET",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff292524),
                                fontFamily: 'BG Flame',
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(height: 20), // Spacing between text and progress bar
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8, // Adjust the width as needed
                        height: 20, // Height of the progress bar
                        decoration: BoxDecoration(
                          color: Colors.white, // Background color of the progress bar
                          borderRadius: BorderRadius.circular(10), // Rounded corners
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: LinearProgressIndicator(
                            value: 0.7, 
                            borderRadius: BorderRadius.circular(10),// Progress value (from 0.0 to 1.0)
                            valueColor: AlwaysStoppedAnimation<Color>(Color(0xff32776C)), // Progress color
                            backgroundColor: Colors.transparent, // Background color behind the progress
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                          Padding
                            (
                            padding: const EdgeInsets.only(top:8.0),
                            child: Text(
                              "60%",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff292524),
                                  fontFamily: 'BG Flame Light',
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          SizedBox(width: 5),
                          Padding(
                            padding: const EdgeInsets.only(top:8.0,right: 16.0),
                            child: Text(
                              "61,000 members",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff292524),
                                  fontFamily: 'BG Flame Bold',
                                  ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.02,

                            right: 16.0
                        ),
                        child: MaterialButton(
                          elevation: 0,
                          onPressed: () {


                          },
                          color:   Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: MediaQuery.of(context).size.height * 0.07,
                            child:  Center(
                                child: Text(
                                  "Support",
                                  style:const TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontFamily: 'TypoGraphica'),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
                ,
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
