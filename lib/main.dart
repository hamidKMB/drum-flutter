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
      backgroundColor: Colors.amber[600],
      body: SafeArea(
        child: DecoratedBox(
            position: DecorationPosition.background,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/drum.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
            child: bodyLayout()),
      ),
    ),
  );
}

Widget bodyLayout() {
  return Column(
    children: [
      buttonRows(child1: Text('press'), child2: Text('press')),
      buttonRows(child1: Text('press'), child2: Text('press')),
      buttonRows(child1: Text('press'), child2: Text('press'))
    ],
  );
}

Widget buttonRows({child1, child2}) {
  return Expanded(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {},
            child: child1,
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {},
            child: child2,
          ),
        ),
      ],
    ),
  );
}
