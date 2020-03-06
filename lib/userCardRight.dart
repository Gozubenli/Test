import 'package:flutter/material.dart';
import './Utility.dart';

class UserCardRight extends StatelessWidget {
  final double iconSize;
  final String iconUrl;

  UserCardRight({@required this.iconSize, @required this.iconUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Text('90', style: Utility.textStyle),
            ),
            Container(
              height: iconSize,
              width: iconSize,
              margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                radius: iconSize,
                backgroundImage: NetworkImage(iconUrl),
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Text('Name', style: Utility.nameStyle),
        ),
      ],
    );
  }
}
