import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class TopPanel extends StatelessWidget {
  Widget _buildUserRow() {
    return <Widget>[
      Container(
        padding: EdgeInsets.all(2),
        child: CircleAvatar(
          radius: 30.0,
          backgroundImage: NetworkImage('https://picsum.photos/id/237/200/300'),
          backgroundColor: Colors.green,          
        ),
      )
          .backgroundColor(Colors.green)
          .borderRadius(all: 30)
          .constraints(height: 50, width: 50)
          .padding(right: 5),
      <Widget>[
        Text('90')
            .textColor(Colors.white)
            .fontSize(24)
            .fontWeight(FontWeight.w600)
            .padding(left: 0),
      ].toColumn(crossAxisAlignment: CrossAxisAlignment.end),
      <Widget>[
        Text('90')
            .textColor(Colors.white)
            .fontSize(24)
            .fontWeight(FontWeight.w600)            
            .padding(right: 0),
      ].toColumn(crossAxisAlignment: CrossAxisAlignment.start),
      Container(
        padding: EdgeInsets.all(2),
        child: CircleAvatar(
          radius: 30.0,
          backgroundImage: NetworkImage('https://picsum.photos/id/236/200/300'),
          backgroundColor: Colors.green,          
        ),
      )
          .backgroundColor(Colors.green)
          .borderRadius(all: 30)
          .constraints(height: 50, width: 50)
          .padding(right: 5)
    ].toRow(mainAxisAlignment: MainAxisAlignment.spaceBetween);
  }

  Widget _buildUserStats() {
    return <Widget>[
      _buildUserStatsItem('846', 'Collect'),
      _buildUserStatsItem('51', 'Attention'),
      _buildUserStatsItem('267', 'Track'),
      _buildUserStatsItem('39', 'Coupons'),
    ]
        .toRow(mainAxisAlignment: MainAxisAlignment.spaceAround)
        .padding(vertical: 10);
  }

  Widget _buildUserStatsItem(String value, String text) => <Widget>[
        Text(value).fontSize(20).textColor(Colors.white).padding(bottom: 5),
        Text(text).textColor(Colors.white.withOpacity(0.6)).fontSize(12),
      ].toColumn();

  @override
  Widget build(BuildContext context) {
    var _gradient = LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [Color(0xff2c3e50), Color(0xff2c3e50)],
    );

    return <Widget>[_buildUserRow(), _buildUserStats()]
        .toColumn(mainAxisAlignment: MainAxisAlignment.spaceAround)
        .padding(horizontal: 10, vertical: 5)
        .backgroundGradient(_gradient)
        .borderRadius(all: 10)
        .elevation(5, shadowColor: Color(0xff2c3e50))
        .height(175)
        .alignment(Alignment.topCenter);
  }
}
