import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Column buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Icon(icon, color: color,),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color
          ),
        ),
      )
    ],
  );
}

Widget getButtonSection(BuildContext context) {
  Color color = Theme.of(context).primaryColor;

  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        buildButtonColumn(color, Icons.call, 'Call'),
        buildButtonColumn(color, Icons.near_me, 'Route'),
        buildButtonColumn(color, Icons.share, 'Share'),
      ],
    ),
  );
}