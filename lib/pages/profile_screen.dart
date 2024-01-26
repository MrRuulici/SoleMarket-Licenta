import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sole_market_project/widgets/my_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});


 void signOutUser() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Center(
      //   child: MyButton(onTap: signOutUser()),
      // ),
      
      appBar: AppBar(
        actions: [IconButton(onPressed: signOutUser, icon: const Icon(Icons.logout))],
      ),
      body: const Center(child: Text("Profile Page",
      style: TextStyle(fontSize: 30),),)
    );
  }
}
