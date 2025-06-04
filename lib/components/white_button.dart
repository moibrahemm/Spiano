import 'package:flutter/material.dart';
import 'package:tunes_player_app/models/piano_button_model.dart';

class WhiteButton extends StatefulWidget {
  const WhiteButton({super.key, required this.buttonItem});
  final PianoButtonModel buttonItem;

  @override
  State<WhiteButton> createState() => _WhiteButtonState();
}

class _WhiteButtonState extends State<WhiteButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTapDown: (_) {
          setState(() {
            isPressed = true;
            widget.buttonItem.playSound();
          });
        },
        onTapUp: (_) {
          setState(() {
            isPressed = false;
          });
        },
        onTapCancel: () {
          setState(() {
            isPressed = false;
          });
        },
        child: AnimatedContainer(
          margin: const EdgeInsets.symmetric(vertical: 3.0),
          duration: const Duration(milliseconds: 100),
          width: double.infinity,
          decoration: BoxDecoration(
            color: isPressed ? Colors.grey[300] : Colors.white,
            borderRadius: BorderRadius.circular(6.0),
            border: Border.all(color: Colors.black26, width: 1.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 2.0,
                offset: Offset(0, 2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
