import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    // Implement sound playing logic
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Scaffold(

            body: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: SizedBox(height: 50,),
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(AssetSource("note1.wav"));
                  },),
                ElevatedButton(
                  child: SizedBox(height: 50,),
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(AssetSource("note2.wav"));
                  },),
                ElevatedButton(
                  child: SizedBox(height: 50,),
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(AssetSource("note3.wav"));
                  },
                ),
              ],
            ),
          ),
      ),

    );
  }
}
