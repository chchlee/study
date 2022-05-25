import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:traveam/home/bloglink_screen.dart';
import 'package:traveam/home/feed_screen.dart';
import 'package:traveam/home/profile_screen.dart';

import 'package:traveam/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text('좌동'),
            const SizedBox(
              width: 4.0,
            ),
            const Icon(CupertinoIcons.chevron_down, size: 15.0),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.search)),
          IconButton(
              onPressed: () {}, icon: const Icon(CupertinoIcons.list_dash)),
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.bell)),
        ],
        bottom: const PreferredSize(
            child: Divider(thickness: 0.5, height: 0.5, color: Colors.grey),
            preferredSize: Size.fromHeight(0.5)),
        // title: Text('AppBar Test'),
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(8.0)),
          ProfileScreen(),
          SizedBox(
            height: 15,
          ),
          MyWidget(),
          SizedBox(
            height: 12,
          ),
          BloglinkScreen(),
          Row(
            children: [Icon(Boxicons.bx_like)],
          ),
        ],
      ),
      // body: CustomCarouselFB2(), //CustomCarouselFB2()),
    );
  }
}
