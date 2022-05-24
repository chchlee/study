import 'package:flutter/material.dart';
import 'package:traveam/screens/main_screens.dart';
import 'package:traveam/theme.dart';

void main() {
  runApp(Traveam());
}

class Traveam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Traveam_UI',
      debugShowCheckedModeBanner: false,
      home: MainScreens(),
      theme: theme(),
    );
  }
}
