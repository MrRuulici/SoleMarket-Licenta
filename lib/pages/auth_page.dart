import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sole_market_project/pages/login_screen.dart';
import 'package:sole_market_project/pages/signup_screen.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {

  bool showLoginPage = true;

  void toggleScreens() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }
  
  @override
  Widget build(BuildContext context) {
          if (showLoginPage) {
            return LoginScreen(showRegisterPage: toggleScreens,);
            
          }
          else {
            return SignupScreen(showLoginPage: toggleScreens,);
            
          }
        }
  }