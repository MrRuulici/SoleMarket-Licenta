import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: const SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              //logo
              Icon(Icons.lock,
              size: 100,)
              //welcome back
          
              // username field
          
              //password field
          
              //forgot password
          
              //sign in button
          
              //continue with
          
              //google + anything else buttons
          
              //register
            ]
          ),
        ),
      )
    );
  }
}