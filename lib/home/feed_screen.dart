// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 365,
        width: 365,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          // image: DecorationImage(
          //     image: AssetImage('assets/images/testimage1.svg'))
        ),
      ),
    );
  }
}
