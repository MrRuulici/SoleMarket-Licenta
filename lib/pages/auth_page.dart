import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sole_market_project/pages/login_screen.dart';
import 'package:sole_market_project/widgets/bottom_nav_bar.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  ///this is for checking if the user is logged in or not, and redirecting to appropriate page
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
            return LoginScreen();
          }
        }
    ));
  }
}