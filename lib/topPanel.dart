import 'package:flutter/material.dart';
import 'package:mywidget/userCardRight.dart';
import './userCardLeft.dart';
import './userCardRight.dart';
import './Utility.dart';

class TopPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.fromLTRB(5, 5, 5, 0),
      decoration: BoxDecoration(
        gradient: Utility.backGround,
        border: Border.all(color: Colors.black54, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(5)),
        boxShadow: const [
          BoxShadow(blurRadius: 10),
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          UserCardLeft(
              iconSize: 48, iconUrl: 'https://picsum.photos/id/237/200/300'),
          Text('Score',style: Utility.textStyle),
          UserCardRight(
              iconSize: 48, iconUrl: 'https://picsum.photos/id/237/200/300'),
        ],
      ),
    );
  }
}
