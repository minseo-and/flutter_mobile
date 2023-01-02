
import 'package:flutter/material.dart';
import 'package:sns/navigation/animalscreen.dart';
import 'package:sns/navigation/feedscreen.dart';
import 'package:sns/navigation/mapscreen.dart';
import 'package:sns/navigation/userscreen.dart';


class MainPage extends StatefulWidget {

  _MainPageState createState() => _MainPageState();

}

class _MainPageState extends State<MainPage> {


  int _selectedIndex=0;
  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
        label: '홈',
        icon: Image.asset('assets/image/animal_b.png', width: 32, height: 32,),
        activeIcon: Image.asset('assets/image/animal_w.png', width: 32, height: 32)
    ),
    BottomNavigationBarItem(
        label: '지도',
        icon: Image.asset('assets/image/map_b.png', width: 32, height: 32,),
        activeIcon: Image.asset('assets/image/map_w.png', width: 32, height: 32)
    ),
    BottomNavigationBarItem(
        label: '피드',
        icon: Image.asset('assets/image/feed_b.png', width: 32, height: 32,),
        activeIcon: Image.asset('assets/image/feed_w.png', width: 32, height: 32)
    ),
    BottomNavigationBarItem(
        label: '유저',
        icon: Image.asset('assets/image/user_b.png', width: 32, height: 32,),
        activeIcon: Image.asset('assets/image/user_w.png', width: 32, height: 32)
    ),

  ];

  List pages = [
    AnimalScreen(),
    MapScreen(),
    FeedScreen(),
    UserScreen()
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('메인페이지'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff1EB79A),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black.withOpacity(.60),
        currentIndex: _selectedIndex,

          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        items: bottomItems
      ),
      body: pages[_selectedIndex],
    );
  }

}