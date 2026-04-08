import 'package:flutter/material.dart';
import '../widgets/animated_name.dart';

class TransitionsScreen extends StatelessWidget {
  const TransitionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transitions')),
      body: const Center(
        child: AnimatedName(),
      ),
    );
  }
}
