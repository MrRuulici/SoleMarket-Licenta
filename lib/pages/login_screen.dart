import 'package:flutter/material.dart';
import 'package:sole_market_project/widgets/text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [

              const SizedBox(height: 50),

              //logo
              const Icon(Icons.lock,
              size: 100,),

              const SizedBox(height: 70),

              //welcome back
              Text('Login with your credentials',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 16,
                  ),),

              const SizedBox(height: 25),

              // username field

              BasicTextField(
                controller: usernameController,
                hintText: 'Username',
              ),

              const SizedBox(height: 20),

              //password field

              BasicTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),


              const SizedBox(height: 10,),

              //forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forgot Password?',
                    style: TextStyle(color: Colors.grey.shade600)),
                  ],
                ),
              )
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