import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: 'Shopping App', home: RowOfData()));
}


class Star extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stars = Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.star, color: Colors.green[500]),
      Icon(Icons.star, color: Colors.green[500]),
      Icon(Icons.star, color: Colors.green[500]),
      Icon(Icons.star, color: Colors.black),
      Icon(Icons.star, color: Colors.black),
    ],
    );
    return stars;
  }
}


class RowOfData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  final ratings = Container(
  padding: EdgeInsets.all(20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Star(),
      Text(
        '170 Reviews',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w800,
          fontFamily: 'Roboto',
          letterSpacing: 0.5,
          fontSize: 20,
        ),
      ),
    ],
  ),
);
return ratings;
  }
}
