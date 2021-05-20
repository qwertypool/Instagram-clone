import 'package:flutter/material.dart';
// import 'package:instagram_clone/colorThemes.dart';
import 'package:instagram_clone/profile.dart';
import 'package:instagram_clone/reels.dart';
import 'package:instagram_clone/searchPage.dart';
import 'package:instagram_clone/notificationPage.dart';
// import 'package:instagram_clone/appTheme.dart';

import 'colorThemes.dart';
import 'homepage.dart';

// import ‘package:flutter/gestures.dart’;
class Root extends StatefulWidget {
  const Root({Key key}) : super(key: key);

  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  int _selectedIndex = 4;

  final List<Widget> _children = [
    Home(),
    Search(),
    Reels(),
    NotificationPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    
    final Brightness brightnessValue =
        MediaQuery.of(context).platformBrightness;
    bool isDark = brightnessValue == Brightness.dark;
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(color: pPrimaryColor),
        currentIndex: _selectedIndex,
        backgroundColor: !isDark?Colors.white:Colors.black,
        selectedItemColor: isDark?Colors.grey:Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: _selectedIndex==0?Icon(Icons.home,color: Colors.black,size: 28,): Icon(Icons.home_outlined,color: Colors.black,size: 28,),label: 'home'),
          BottomNavigationBarItem(icon:  _selectedIndex==1?Icon(Icons.search,color: Colors.black,size: 28,): Icon(Icons.search_outlined,color: Colors.black,size: 28,),label: 'search'),
          BottomNavigationBarItem(icon:  _selectedIndex==2?Icon(Icons.video_collection_sharp,color: Colors.black,size: 28,): Icon(Icons.video_collection_outlined,color: Colors.black,size: 28,),label: 'reels' ),
          BottomNavigationBarItem(icon: _selectedIndex==3?Icon(Icons.favorite,color: Colors.black,size: 28,):Icon(Icons.favorite_border_outlined,color: Colors.black,size: 28,),label: 'notif'),
          BottomNavigationBarItem(icon: _selectedIndex==4?
           CircleAvatar(
             radius: 14,
             backgroundColor: Colors.black,
              child: CircleAvatar(
               radius: 13,
               backgroundImage:AssetImage('assets/profilepic.jpg') ,),
           ):
              CircleAvatar(
             radius: 14,
             backgroundImage:AssetImage('assets/profilepic.jpg') ,),
             label: 'profile'
           ),
        
        ],
        
      ),
     );
  }
}
