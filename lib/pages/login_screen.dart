import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sole_market_project/widgets/my_button.dart';
import 'package:sole_market_project/widgets/text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  //text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //sign in function
  void signInUser() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text, 
      password: passwordController.text
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                controller: emailController,
                hintText: 'Email',
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
              ),

              const SizedBox(height: 10,),

              //sign in button

              MyButton(onTap: signInUser, text: 'Sign In', color: Colors.black),

              const SizedBox(height: 40),

              //continue with

              Padding(
               padding: const EdgeInsets.all(25.0),
               child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade600,
                      )
                  ),
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Login with',
                    style: TextStyle(color: Colors.grey.shade800),
                  )
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey.shade600,
                    )
                  ),
                  ],
                ),
             ),

              //google + anything else buttons

              // Row(
              //   children: [
              //     Image.asset('../images/pngegg.png',
              //     height: 75,),
              //   ],
              // )

               const SizedBox(height: 250),

              //register

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? "),
                  Text("Register now",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ],
              )
            ]
          ),
        ),
      )
    );
  }
}