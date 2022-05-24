import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          Container(
            color: Colors.orange[100],
            child: Center(
              child: Text(
                'IndexedStack 1',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
          Container(
            color: Colors.redAccent[100],
            child: Center(
                child: Text(
              'IndexedStack 2',
              style: TextStyle(fontSize: 20, color: Colors.black),
            )),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
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
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
      ),
    );
  }
}
