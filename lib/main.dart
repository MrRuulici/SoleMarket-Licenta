import 'package:flutter/material.dart';
import 'package:sole_market_project/pages/auth_page.dart';
import 'package:sole_market_project/pages/login_screen.dart';
import 'package:sole_market_project/pages/main_page.dart';
import 'package:sole_market_project/widgets/bottom_nav_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
    );
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
      home: const MainPage(),
    );
  }
}
