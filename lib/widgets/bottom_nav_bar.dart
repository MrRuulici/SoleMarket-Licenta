import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sole_market_project/pages/home_screen.dart';
import 'package:sole_market_project/pages/list_of_sneakers_screen.dart';
import 'package:sole_market_project/pages/profile_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

final user = FirebaseAuth.instance.currentUser!; // Current user verified in firebase

class _BottomNavBarState extends State<BottomNavBar> {

  int _selectedIndex = 0; //for changing pages

  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
    //print(_selectedIndex);
  }

  final List<Widget> _pages = [ //list of pages
    HomeScreen(),
    const SneakerListScreen(),
    const ProfileScreen()
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome back, ${user.email!}!'),
        backgroundColor: Colors.blue,
        ),

      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            gap: 10,
            selectedIndex: _selectedIndex,
            onTabChange: _navigateBottomBar,
            padding: const EdgeInsets.all(20),
            duration: const Duration(milliseconds: 200),
            tabs: const [
              GButton(icon: Icons.home, text: 'Home'),
              GButton(icon: Icons.search_rounded, text: 'Search'),
              GButton(icon: Icons.settings, text: 'Profile'),
            ]
          ),
        ),
      ),
    );
  }
}