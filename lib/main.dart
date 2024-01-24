import 'package:flutter/material.dart';
import 'package:sole_market_project/pages/home_screen.dart';
import 'package:sole_market_project/pages/login_screen.dart';
import 'package:sole_market_project/widgets/bottom_nav_bar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SoleMarket - Incoming project',
      theme: ThemeData(useMaterial3: true),
      //home: const BottomNavBar(),
      home: LoginScreen(),
    );
  }
}
