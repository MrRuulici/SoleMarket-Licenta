import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SoleMarket'),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Card(
          margin: EdgeInsets.all(20),
          color: Colors.amber,
          child: Text('Welcome to SoleMarket'),   
          )
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Profile',
              ),
          ],
          //currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          //onTap: _onItemTapped,
        ),
      );
  }
}