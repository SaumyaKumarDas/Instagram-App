import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/Screens/Heart/heartscreen.dart';
import 'package:instagram/Screens/Home/homescreen.dart';
import 'package:instagram/Screens/Post/postscreen.dart';
import 'package:instagram/Screens/Profile/profilescreen.dart';
import 'package:instagram/Screens/Search/searchscreen.dart';


class BottomNavScreen extends StatefulWidget{
  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex=0;
  List<Widget>pages=[
    HomeScreen(),
    SearchScreen(),
    PostScreen(),
    HeartScreen(),
    Profilescreen()

  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     bottomNavigationBar: BottomNavigationBar(
       currentIndex: currentIndex,
       type: BottomNavigationBarType.fixed,
       selectedItemColor: Colors.white,
       unselectedItemColor: Colors.grey,
       backgroundColor: Colors.black,

       onTap: (index){
         setState(() {
           currentIndex = index;
         });
       },
         items: [
           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
           BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
           BottomNavigationBarItem(icon: Icon(CupertinoIcons.plus_app), label: "Post"),
           BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart), label: "Heart"),
           BottomNavigationBarItem(icon: Icon(CupertinoIcons.profile_circled), label: "Profile")
    ]
    ),
     body: IndexedStack(
       children: pages,
       index: currentIndex,
     ),
   );
  }
}