import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: 'Shopping App', home: Box()));
}


class Box extends StatefulWidget {
  @override
  _BoxState createState() => _BoxState();
}

class _BoxState extends State<Box> {
  bool touch = true;
  Color color1 = Colors.blue[500];
  Color color2 = Colors.green[500];
  Color color;

  doit(){
    setState(() {
      if(!touch){
        touch = true;
        color = color1;
      }
    else{
      touch = false;
      color = color2;
    }
    });
    
  }

  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: GestureDetector(
        onTap: doit,
      ),
      color: touch?color1:color2,
    );
  }
}
