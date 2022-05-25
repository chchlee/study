import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Padding(padding: EdgeInsets.fromLTRB(22, 30, 0, 0)),
              CircleAvatar(
                backgroundImage: AssetImage('testimage1.svg'),
                radius: 32,
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 0, 5, 0)),
              Column(
                children: [
                  Text(
                    "Tra_veam",
                    style:
                        TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    "광주광역시",
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                    textAlign: TextAlign.start,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
