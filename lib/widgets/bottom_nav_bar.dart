// import 'package:flutter/material.dart';
// import 'package:sole_market_project/pages/home_screen.dart';


// class Pages extends StatefulWidget {
//   @override
//   createState() => new PagesState();
// }

// class PagesState extends State<Pages> {
//   int pageIndex = 0;

//   // Create all the pages once and return same instance when required
//   final home_screen _profilePage = new ProfilePage(); 
//   final PlanPage _planPage = new PlanPage();
//   final StartUpNamerPage _startUpNamerPage = new StartUpNamerPage();


//   Widget pageChooser() {
//     switch (this.pageIndex) {
//       case 0:
//         return _profilePage;
//         break;

//       case 1:
//         return _planPage;
//         break;

//       case 2:
//         return _startUpNamerPage;
//         break;

//       default:
//         return Container(
//           child: Center(
//               child: Text(
//                   'No page found by page chooser.',
//                   style: new TextStyle(fontSize: 30.0)
//               )
//           ),
//         );
//     }
//   }