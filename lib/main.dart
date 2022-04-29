import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

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
          child: bodyLayout(),
        ),
      ),
    ),
  );
}

Widget bodyLayout() {
  return Column(
    children: [
      buttonRows(
        child1: Text('press'),
        child2: Text('press'),
        sound1: 'assets_c1.wav',
        sound2: 'assets_c2.wav',
      ),
      buttonRows(
        child1: Text('press'),
        child2: Text('press'),
        sound1: 'assets_h1.wav',
        sound2: 'assets_h2.wav',
      ),
      buttonRows(
        child1: Text('press'),
        child2: Text('press'),
        sound1: 'assets_k1.wav',
        sound2: 'assets_k2.wav',
      )
    ],
  );
}

Widget buttonRows({child1, child2, sound1, sound2}) {
  return Expanded(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {
              playSound(sound1);
            },
            child: child1,
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              playSound(sound2);
            },
            child: child2,
          ),
        ),
      ],
    ),
  );
}

void playSound(soundFile) {
  var player = AudioCache(prefix: 'assets/');
  player.play(soundFile);
}
