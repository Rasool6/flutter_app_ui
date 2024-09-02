import 'package:flutter/material.dart';
import 'package:untitled/home/ui/campaign.dart';
import 'package:untitled/home/ui/cod_token.dart';
import 'package:untitled/home/ui/home_utils/home.dart';
import 'package:untitled/home/ui/member_wall.dart';
import 'package:untitled/home/ui/profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeFragment(),
    MemberWallFragment(),
    CampaignFragment(),
    CODTokenFragment(),
    ProfileFragment(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 4.0), // Add space between icon and label
              child: Image.asset(
                'assets/home.png',
                color: _selectedIndex == 0 ? Colors.black : Colors.black54,
                width: 24,
                height: 24,
              ),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 4.0), // Add space between icon and label
              child: Image.asset(
                'assets/member_wall.png',
                color: _selectedIndex == 1 ? Colors.black : Colors.black54,
                width: 24,
                height: 24,
              ),
            ),
            label: "Members Wall",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 4.0), // Add space between icon and label
              child: Image.asset(
                'assets/campaign.png',
                color: _selectedIndex == 2 ? Colors.black : Colors.black54,
                width: 24,
                height: 24,
              ),
            ),
            label: "Campaign",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 4.0), // Add space between icon and label
              child: Image.asset(
                'assets/token.png',
                color: _selectedIndex == 3 ? Colors.black : Colors.black54,
                width: 24,
                height: 24,
              ),
            ),
            label: "COD Token",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 4.0), // Add space between icon and label
              child: Image.asset(
                'assets/profile.png',
                color: _selectedIndex == 4 ? Colors.black : Colors.black54,
                width: 24,
                height: 24,
              ),
            ),
            label: "Profile",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(
          fontFamily: 'PlusJakartaSans-Regular',
          fontWeight: FontWeight.bold,
          fontSize: 12, // Adjust font size if needed
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: 'PlusJakartaSans-Regular',
          fontWeight: FontWeight.normal,
          fontSize: 12, // Adjust font size if needed
        ),
      ),
      body: SingleChildScrollView(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }

}
