import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: 'Shopping App', 
  initialRoute: '/', 
  routes: {
    '/': (context) => FirstPage(),
    '/second': (context) => SecondPage()
  }));
}


class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Route')),
      body: Center( child: RaisedButton(child: Text('Go to Second Page'), onPressed: () => Navigator.pushNamed(context, '/second')))
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Route')),
      body: Center( child: RaisedButton(child: Text('Go to First Page'), onPressed: () => Navigator.pop(context)))
    );
  }
}
