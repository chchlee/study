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
        type: BottomNavigationBarType
            .fixed, // BottomNavigationBarType.fixed는 3개 이상의 아이템을 표시할 때 설정
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          const BottomNavigationBarItem(
              // Flutter에 변하지 않는 위젯임을 알려줘서, 컴파일 시점에서 미리 위젯을 만들어둬 런타임
              label: '홈', // 시점에서 위젯을 만들어 줄 필요가 없어서 성능이 빨라짐.
              icon: Icon(
                CupertinoIcons.home,
              )),
          const BottomNavigationBarItem(
              label: '탐색',
              icon: Icon(
                CupertinoIcons.search,
              )),
          const BottomNavigationBarItem(
              label: '업로드', icon: Icon(FontAwesomeIcons.upload)),
          const BottomNavigationBarItem(
              label: '앨범', icon: Icon(FontAwesomeIcons.bookOpen)),
          const BottomNavigationBarItem(
              label: '내정보',
              icon: Icon(
                CupertinoIcons.person,
              )),
        ],
      ),
    );
  }
}
