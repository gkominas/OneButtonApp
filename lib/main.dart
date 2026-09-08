import 'package:flutter/material.dart';

void main() {
  runApp(const DeadButtonApp());
}

class DeadButtonApp extends StatelessWidget {
  const DeadButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dead Button',
      home: Scaffold(
        appBar: AppBar(title: const Text('Dead Button')),
        body: Center(
          child: ElevatedButton(
            // Non-null callback, so the button is enabled and pressable,
            // but the body is intentionally empty: pressing it does nothing.
            onPressed: () {},
            child: const Text('Press Me'),
          ),
        ),
      ),
    );
  }
}
