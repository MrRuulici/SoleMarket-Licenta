import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sole_market_project/widgets/bottom_nav_bar.dart';
import 'package:sole_market_project/widgets/my_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});


 void signOutUser() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            const Icon(Icons.person,
              size: 100,),
            Text('Logged in as\n${user.email!}',
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 16,
                ),textAlign: TextAlign.center,),
            const SizedBox(height: 470),
            MyButton(onTap: signOutUser, text: 'Sign out', color: Colors.red),
            ],
          
        )
        
      ),
      
    //   body: const Center(child: Text("Profile Page",
    //   style: TextStyle(fontSize: 30),),)
    );
  }
}
