import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class MediaPlayerScreen extends StatefulWidget {
  const MediaPlayerScreen({super.key});

  @override
  State<MediaPlayerScreen> createState() => _MediaPlayerScreenState();
}

class _MediaPlayerScreenState extends State<MediaPlayerScreen>
    with SingleTickerProviderStateMixin {
  final player = AudioPlayer();
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );
  }

  Future<void> playAudio() async {
    await player.play(
      AssetSource('audio/ortensialily-creepy-song-276076.mp3'),
    );

    controller.repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Media Player')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RotationTransition(
              turns: controller,
              child: Image.asset(
                'assets/images/cd.png',
                width: 200,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: playAudio,
              child: const Text('Play'),
            ),
          ],
        ),
      ),
    );
  }
}
