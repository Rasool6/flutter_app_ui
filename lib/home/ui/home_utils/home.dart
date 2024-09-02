import 'package:flutter/material.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({super.key});

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  /////////////////////////////////////////////////////////////////
  final List<Blog> blogs = [
    Blog(
      date: "9th April 2024",
      title: "Earth Future",
      subtitle: "Act Today. Save Tomorrow.",
      imageAsset: 'assets/bg_img.png',
      // Replace with your image asset
      description:
          "Dive into our articles to discover firsthand accounts of how small acts of kindness are making a big difference in the world...",
    ),
    Blog(
      date: "15th April 2024",
      title: "Ocean Conservation",
      subtitle: "Preserve Our Seas.",
      imageAsset: 'assets/logo.png',
      // Replace with your image asset
      description:
          "Learn about the critical importance of ocean conservation and what you can do to help protect marine life...",
    ),
    Blog(
      date: "22nd April 2024",
      title: "Urban Green Spaces",
      subtitle: "Green Cities, Healthy Lives.",
      imageAsset: 'assets/liked.png',
      // Replace with your image asset
      description:
          "Explore how increasing green spaces in urban areas can improve mental health and environmental sustainability...",
    ),

    // Add more blogs here
  ];

  int _currentIndex = 0;

  final List<Shop> shops = [
    Shop(
        title: "Our Shop",
        itemName: "Blue T-Shirt",
        itemPrice: "£49.99",
        imageAsset: 'assets/blue_shirt.png',
        // Replace with your image asset
        description:
            "With every purchase, you're not just getting a quality product – you're also supporting our community-driven movement to create positive change in the world. Shop with purpose and join us in sowing seeds of hope and empowerment."),
    Shop(
        title: "Our Shop",
        itemName: "Grey T-Shirt",
        itemPrice: "£45.99",
        imageAsset: 'assets/grey_shirt.png',
        // Replace with your image asset
        description:
            "Our Grey T-Shirt offers a perfect blend of comfort and style. By purchasing this shirt, you are supporting initiatives that make a difference in the environment and society."),
    Shop(
        title: "Our Shop",
        itemName: "Black Hoodie",
        itemPrice: "£59.99",
        imageAsset: 'assets/blue_shirt.png',
        // Replace with your image asset
        description:
            "Stay warm and stylish with our Black Hoodie. Every purchase contributes to our mission of promoting sustainability and social responsibility."),
    Shop(
        title: "Our Shop",
        itemName: "White Cap",
        itemPrice: "£19.99",
        imageAsset: 'assets/grey_shirt.png',
        // Replace with your image asset
        description:
            "Top off your look with our White Cap. Not just a fashion statement, but also a way to support causes that matter. Wear it with pride knowing you are part of a bigger change."),
  ];

  int _currentItemIndex = 0;

  void _prevProduct() {
    setState(() {
      if (_currentItemIndex > 0) {
        _currentItemIndex--;
      }
    });
  }

  void _nextProduct() {
    setState(() {
      if (_currentItemIndex < shops.length - 1) {
        _currentItemIndex++;
      }
    });
  }

  void _prevBlog() {
    setState(() {
      if (_currentIndex > 0) {
        _currentIndex--;
      }
    });
  }

  void _nextBlog() {
    setState(() {
      if (_currentIndex < blogs.length - 1) {
        _currentIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentBlog = blogs[_currentIndex];
    final currentItems = shops[_currentItemIndex];
    final nextItems = shops[_currentItemIndex + 1];
    return Container(
      color: Colors.white,
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
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    // Shadow color with opacity
                    spreadRadius: 2,
                    // Spread radius of the shadow
                    blurRadius: 10,
                    // Blur radius of the shadow
                    offset:
                        const Offset(0, 3), // Changes position of shadow (x, y)
                  ),
                ],
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24.0),
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
                  child: Text(
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
                  padding: EdgeInsets.only(top: 10, left: 24.0),
                  child: Text(
                    "10K ACRE - 100K MEMBERS\nMILESTONE",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.028,
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
                      SizedBox(height: 20),
                      // Spacing between text and progress bar
                      Container(
                        width: MediaQuery.of(context).size.width *
                            0.8, // Adjust the width as needed
                        height: 20, // Height of the progress bar
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // Background color of the progress bar
                          borderRadius:
                              BorderRadius.circular(10), // Rounded corners
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: LinearProgressIndicator(
                            value: 0.7,
                            borderRadius: BorderRadius.circular(10),
                            // Progress value (from 0.0 to 1.0)
                            valueColor: AlwaysStoppedAnimation<Color>(
                                Color(0xff32776C)),
                            // Progress color
                            backgroundColor: Colors
                                .transparent, // Background color behind the progress
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
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
                            padding:
                                const EdgeInsets.only(top: 8.0, right: 16.0),
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
                            right: 16.0),
                        child: MaterialButton(
                          elevation: 0,
                          onPressed: () {},
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: MediaQuery.of(context).size.height * 0.07,
                            child: Center(
                                child: Text(
                              "Support",
                              style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontFamily: 'TypoGraphica'),
                            )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * .35,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: const Color(0xffE8BE11),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Image.asset(
                                        "assets/liked.png",
                                        width: 20,
                                        height: 20,
                                        errorBuilder:
                                            (context, error, stackTrace) {
                                          return const Icon(Icons.error);
                                        },
                                      ),
                                    ),
                                    const Expanded(
                                      flex: 1,
                                      child: Text("888",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                              fontFamily: "BG Flame Bold",
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    const Text("|",
                                        style: TextStyle(
                                          fontSize: 28,
                                          color: Colors.black26,
                                          fontFamily: "BG Flame Bold",
                                        )),
                                    Expanded(
                                      flex: 1,
                                      child: Image.asset(
                                        "assets/diskliked.png",
                                        width: 30,
                                        height: 30,
                                        errorBuilder:
                                            (context, error, stackTrace) {
                                          return const Icon(Icons.error);
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text("888".substring(0, 3),
                                          style: const TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontFamily: "BG Flame Bold",
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * .001),
                            MaterialButton(
                              onPressed: () {},
                              child: Container(
                                width: MediaQuery.of(context).size.width * .25,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: const Color(0xffE8BE11),
                                ),
                                child: Center(
                                    child: Text(
                                  "Share",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'BG Flame Bold',
                                      color: Colors.black),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
            height: MediaQuery.of(context).size.height * .35,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 24.0),
                  child: Text(
                    "10K ACRE - 100K MEMBERS\nMILESTONE",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.028,
                        letterSpacing: 1.5,
                        color: Color(0xffffffff),
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
                                color: Color(0xffffffff),
                                fontFamily: 'BG Flame Light',
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "TARGET",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xffffffff),
                                fontFamily: 'BG Flame',
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.02,
                            right: 16.0),
                        child: MaterialButton(
                          elevation: 0,
                          onPressed: () {},
                          color: Color(0xffE8BE11),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: MediaQuery.of(context).size.height * 0.07,
                            child: Center(
                                child: Text(
                              "Notify  once  live ",
                              style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontFamily: 'TypoGraphica'),
                            )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.9,
            color: Colors.black,
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "OUR BLOG",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  currentBlog.description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 16),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      currentBlog.imageAsset,
                      width: double.infinity,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 1),
                Container(
                  padding: EdgeInsets.all(16),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            currentBlog.date,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            currentBlog.title,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            currentBlog.subtitle,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.yellow,
                            onPrimary: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Container(
                              width: 60, child: Center(child: Text("Read"))),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: _prevBlog,
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero, // Remove default padding
                        minimumSize: Size(30, 30), // Set size of the button
                      ),
                      child: Image.asset(
                        "assets/previous_slide.png",
                        // Replace with your image asset for the previous button
                        width: 30,
                        height: 30,
                      ),
                    ),
                    SizedBox(width: 20), // Spacing between buttons
                    TextButton(
                      onPressed: _nextBlog,
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero, // Remove default padding
                        minimumSize: Size(30, 30), // Set size of the button
                      ),
                      child: Image.asset(
                        "assets/next_slide.png",
                        // Replace with your image asset for the next button
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(
                  currentItems.title,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),

                // Description
                Text(
                  currentItems.description,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 20),

                // Products Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // First Product
                    Expanded(
                      child: Column(

                        children: [
                          Image.asset(
                            currentItems.imageAsset,
                            width: 120,
                            height: 180,
                          ),
                          SizedBox(height: 10),
                          Text(
                            currentItems.itemName,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            currentItems.itemPrice,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Second Product
                    Expanded(
                      child: Column(
                        children: [
                          Image.asset(
                            nextItems.imageAsset,
                            width: 120,
                            height: 180,
                          ),
                          SizedBox(height: 10),
                          Text(
                            nextItems.itemName,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            nextItems.itemPrice,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),

                // Navigation Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: _prevProduct,
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero, // Remove default padding
                        minimumSize: Size(30, 30), // Set size of the button
                      ),
                      child: Image.asset(
                        "assets/previous_slide.png",
                        width: 30,
                        height: 30,
                      ),
                    ),
                    SizedBox(width: 20), // Spacing between buttons
                    TextButton(
                      onPressed: _nextProduct,
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero, // Remove default padding
                        minimumSize: Size(30, 30), // Set size of the button
                      ),
                      child: Image.asset(
                        "assets/next_slide.png",
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Blog {
  final String date;
  final String title;
  final String subtitle;
  final String imageAsset;
  final String description;

  Blog({
    required this.date,
    required this.title,
    required this.subtitle,
    required this.imageAsset,
    required this.description,
  });
}

class Shop {
  final String title;
  final String itemName;
  final String itemPrice;
  final String imageAsset;
  final String description;

  Shop({
    required this.title,
    required this.itemName,
    required this.itemPrice,
    required this.imageAsset,
    required this.description,
  });
}

///////////////
