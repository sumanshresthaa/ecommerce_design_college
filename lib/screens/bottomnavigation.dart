import 'package:flutter/material.dart';
import 'package:task2/screens/homepage.dart';
import 'package:task2/screens/registration_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final  _children = [
    HomePage(),
    HomePage(),
    RegistrationScreen(),
  ];
  void _onchanged(int index){
  setState(() {
    _currentIndex = index;
  });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex ,
        backgroundColor: Colors.blue,
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.white,

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
            backgroundColor: Colors.white,

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Accounts',
            backgroundColor: Colors.white,

          ),
        ],
        onTap: _onchanged,


        type: BottomNavigationBarType.fixed ,
    )


    );

  }
}
