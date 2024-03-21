import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sole_market_project/pages/auth_page.dart';
import 'package:sole_market_project/widgets/bottom_nav_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(), 
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const BottomNavBar();
          }
          else {
            return const AuthPage();
          }
        }
      )
    );
  }
}