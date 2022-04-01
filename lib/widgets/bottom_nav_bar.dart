import 'package:bloodbankfinder/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int _currentIndex = 0;

  final tabs = [
    HomeScreen(),
    Center(
      child: Icon(Icons.add),
    ),
    Center(
      child: Icon(Icons.add),
    ),
    Center(
      child: Icon(Icons.add),
    ),
    Center(
      child: Icon(Icons.add),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          selectedItemColor: Color(0xff0FC3B3),
          backgroundColor: Colors.white,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                size: 33,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.note_add_outlined,
                size: 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.messenger_outline_sharp,
                size: 29,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.bookOpen,
                size: 25,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.globe,
                size: 25,
              ),
              label: '',
            )
          ]),
    );
  }
}
