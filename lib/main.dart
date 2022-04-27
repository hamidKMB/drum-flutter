import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return getApplication();
  }
}

Widget getApplication() {
  return MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue[600],
      body: SafeArea(
        child: DecoratedBox(
          position: DecorationPosition.background,
          child: Center(
            child: Container(
              width: 50.0,
              height: 50.0,
              margin: EdgeInsets.all(5.0),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.black87,
            image: DecorationImage(
              image: AssetImage('images/drum.png'),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
    ),
  );
}
