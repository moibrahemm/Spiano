import 'package:flutter/material.dart';
import 'package:tunes_player_app/screens/spiano_home.dart';

void main() {
  runApp(const SpianoApp());
}

class SpianoApp extends StatelessWidget {
  const SpianoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SpianoHome(),
    );
  }
}
