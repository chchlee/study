import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:traveam/home/home_screen.dart';
import 'package:traveam/screens/book/book_screen.dart';
import 'package:traveam/screens/person/person_screen.dart';
import 'package:traveam/screens/search/search_screen.dart';
import 'package:traveam/screens/upload/upload_screen.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({Key? key}) : super(key: key);

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeScreen(),
          SearchScreen(),
          UploadScreen(),
          BookScreen(),
          PersonScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              label: '홈',
              icon: Icon(
                CupertinoIcons.home,
              )),
          BottomNavigationBarItem(
              label: '탐색',
              icon: Icon(
                CupertinoIcons.search,
              )),
          BottomNavigationBarItem(
              label: '업로드', icon: Icon(FontAwesomeIcons.upload)),
          BottomNavigationBarItem(
              label: '앨범', icon: Icon(FontAwesomeIcons.bookOpen)),
          BottomNavigationBarItem(
              label: '내정보',
              icon: Icon(
                CupertinoIcons.person,
              )),
        ],
      ),
    );
  }
}
