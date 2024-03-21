import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sole_market_project/models/signup_controller.dart';
import 'package:sole_market_project/widgets/my_button.dart';
import 'package:sole_market_project/widgets/text_field.dart';

class SignupScreen extends StatefulWidget {
  final VoidCallback showLoginPage;
  const SignupScreen({super.key, required this.showLoginPage});

  

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future signUpUser() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    );
  }

  // Future signup

  @override
   Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();
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
              Text("Sole Market", style: TextStyle(fontSize: 32),),

              const SizedBox(height: 70),

              //welcome back text
              Text('Register now',
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

              const SizedBox(height: 20),

              //confirm password field

              BasicTextField(
                controller: passwordController,
                hintText: 'Confirm Password',
                obscureText: true,
              ),


              const SizedBox(height: 10,),

              //sign in button

              MyButton(onTap: signUpUser, text: 'Sign up', color: Colors.black),

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
                    'Register with',
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


               const SizedBox(height: 160),

              //register

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 const Text("Don't have an account? "),
                  GestureDetector(
                    onTap: () {
                      print('Button was pressed');
                      widget.showLoginPage();
                    },
                    child: const Text("Register now",
                    style: TextStyle(
                      color: Color.fromARGB(255, 34, 67, 255),
                      fontWeight: FontWeight.bold,
                    ),
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
