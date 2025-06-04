import 'package:audioplayers/audioplayers.dart';

class PianoButtonModel {
  final String sound;
  final double? positionAbove;

  const PianoButtonModel({required this.sound, this.positionAbove});

  void playSound() {
    final AudioPlayer player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
