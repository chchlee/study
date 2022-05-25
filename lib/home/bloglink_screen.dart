// import 'package:flutter/cupertino.dart';
// import 'dart:html';

import 'package:flutter/material.dart';

class BloglinkScreen extends StatelessWidget {
  const BloglinkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 83,
      width: 365,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black12, width: 1)),
      child: Row(
        children: [
          Container(
            height: 75,
            width: 75,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(color: Colors.lightBlueAccent),
            padding: EdgeInsets.all(4),
          ),
          Padding(padding: EdgeInsets.fromLTRB(12, 0, 0, 0)),
          Column(
            children: [
              SizedBox(
                height: 8,
              ),
              Text(
                '광주광역시 여행 후기',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 5,
              ),
              Text.rich(
                TextSpan(children: [TextSpan(text: "코로나로 인해 여행에 갈")]),
                // style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                // maxLines: 4,
                // overflow: TextOverflow.ellipsis,
                // textDirection: TextDirection.rtl,
                // textAlign: TextAlign.justify,
              )
            ],
          )
        ],
      ),
    );
  }
}
