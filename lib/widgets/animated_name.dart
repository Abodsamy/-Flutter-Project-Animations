import 'package:flutter/material.dart';

class AnimatedName extends StatefulWidget {
  const AnimatedName({super.key});

  @override
  State<AnimatedName> createState() => _AnimatedNameState();
}

class _AnimatedNameState extends State<AnimatedName> {
  bool show = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedOpacity(
          opacity: show ? 1 : 0,
          duration: const Duration(seconds: 1),
          child: AnimatedSlide(
            offset: show ? Offset.zero : const Offset(0, 1),
            duration: const Duration(seconds: 1),
            child: AnimatedScale(
              scale: show ? 1.5 : 1,
              duration: const Duration(seconds: 1),
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                padding: const EdgeInsets.all(20),
                color: Colors.blue,
                child: const Text(
                  'Abod Samy',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            setState(() {
              show = !show;
            });
          },
          child: const Text('Animate'),
        ),
      ],
    );
  }
}
