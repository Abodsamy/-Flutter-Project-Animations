import 'package:flutter/material.dart';

class TweenAnimationScreen extends StatefulWidget {
  const TweenAnimationScreen({super.key});

  @override
  State<TweenAnimationScreen> createState() => _TweenAnimationScreenState();
}

class _TweenAnimationScreenState extends State<TweenAnimationScreen> {
  double size = 100;
  Color color = Colors.blue;

  void animateSize() {
    setState(() {
      size = size == 100 ? 200 : 100;
    });
  }

  void animateColor() {
    setState(() {
      color = color == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tween Animation')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              width: size,
              height: size,
              color: Colors.green,
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: animateSize,
            child: const Text('Animate Size'),
          ),
          const SizedBox(height: 40),
          AnimatedContainer(
            duration: const Duration(seconds: 1),
            width: 150,
            height: 150,
            color: color,
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: animateColor,
            child: const Text('Animate Color'),
          ),
        ],
      ),
    );
  }
}
