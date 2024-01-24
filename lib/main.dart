import 'package:flutter/material.dart';
import 'pages/home_screen.dart';

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
      home: const HomeScreen(),
    );
  }
}
