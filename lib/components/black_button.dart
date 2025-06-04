import 'package:flutter/material.dart';
import 'package:tunes_player_app/models/piano_button_model.dart';

class BlackButton extends StatefulWidget {
  const BlackButton({
    super.key,
    required this.buttonItem,
    required this.height,
  });
  final PianoButtonModel buttonItem;
  final double height;

  @override
  State<BlackButton> createState() => _BlackButtonState();
}

class _BlackButtonState extends State<BlackButton> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final keyHeight = screenHeight / 7;
    return Positioned(
      top: widget.height,
      left: 0,
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
          isPressed = false;
        },
        child: Container(
          decoration: BoxDecoration(
            color: isPressed ? Colors.grey[900] : Colors.black,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                offset: Offset(3, 3),
                blurRadius: 5,
                spreadRadius: 1,
              ),
            ],
          ),
          width: MediaQuery.of(context).size.width * 0.65,
          height: keyHeight * 0.35,
        ),
      ),
    );
  }
}
