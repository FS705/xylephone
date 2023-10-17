import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  Future<void> playSound(int soundNumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource("note$soundNumber.wav"));
  }

  Expanded buildKey({required Color backgroundColor, required int soundNumber}) {
    return   Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: backgroundColor),
        child: const Text(''),
        onPressed: () async {
          playSound(soundNumber);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(

            body: SafeArea(
              child: Center( child:

              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildKey(backgroundColor: Color(0xFF6A5ACD), soundNumber: 1),
                  buildKey(backgroundColor: Color(0xFF98FF98), soundNumber: 2),
                  buildKey(backgroundColor: Color(0xFFF08080), soundNumber: 3),
                  buildKey(backgroundColor: Color(0xFFDAA520), soundNumber: 4),
                  buildKey(backgroundColor: Color(0xFFE6E6FA), soundNumber: 5),
                  buildKey(backgroundColor: Color(0xFF4682B4), soundNumber: 6),
                  buildKey(backgroundColor: Color(0xFFFA8072), soundNumber: 7),
                ],
              ),
          ),
            ),
      ),
    );
  }
}
