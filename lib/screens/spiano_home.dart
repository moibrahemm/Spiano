import 'package:flutter/material.dart';
import 'package:tunes_player_app/components/black_button.dart';
import 'package:tunes_player_app/components/white_button.dart';
import 'package:tunes_player_app/models/piano_button_model.dart';

class SpianoHome extends StatelessWidget {
  const SpianoHome({super.key});
  final List<PianoButtonModel> whiteButtons = const [
    PianoButtonModel(sound: 'sounds/sound_1.wav'),
    PianoButtonModel(sound: 'sounds/sound_2.wav'),
    PianoButtonModel(sound: 'sounds/sound_3.wav'),
    PianoButtonModel(sound: 'sounds/sound_4.wav'),
    PianoButtonModel(sound: 'sounds/sound_5.wav'),
    PianoButtonModel(sound: 'sounds/sound_6.wav'),
    PianoButtonModel(sound: 'sounds/sound_7.wav'),
  ];
  final List<PianoButtonModel> blackButtons = const [
    PianoButtonModel(sound: 'sounds/sound_1.wav', positionAbove: 0),
    PianoButtonModel(sound: 'sounds/sound_2.wav', positionAbove: 1),
    PianoButtonModel(sound: 'sounds/sound_3.wav', positionAbove: 3),
    PianoButtonModel(sound: 'sounds/sound_4.wav', positionAbove: 4),
    PianoButtonModel(sound: 'sounds/sound_5.wav', positionAbove: 5),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'Spiano',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Pacifico',
            fontSize: 28.0,
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final keyHeight = constraints.maxHeight / whiteButtons.length;
          return Stack(
            children: [
              Column(
                children: [
                  ...whiteButtons.map((e) => WhiteButton(buttonItem: e)),
                ],
              ),
              ...blackButtons.map((e) {
                final topPosition = keyHeight * (e.positionAbove! + 0.8);
                return BlackButton(height: topPosition, buttonItem: e);
              }),
            ],
          );
        },
      ),
    );
  }
}
