import 'package:flutter/material.dart';
import 'package:flutterprojectanimations/screens/media_player_screen.dart';
import 'package:flutterprojectanimations/screens/transitions_screen.dart';
import 'package:flutterprojectanimations/screens/tween_animation_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animations Project',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animations Tasks')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const TransitionsScreen(),
                  ),
                );
              },
              child: const Text('Transitions Screen'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const MediaPlayerScreen(),
                  ),
                );
              },
              child: const Text('Media Player Screen'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const TweenAnimationScreen(),
                  ),
                );
              },
              child: const Text('Tween Animation Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
