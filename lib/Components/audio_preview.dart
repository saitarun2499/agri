import 'package:agri/API/sound_player.dart';
import 'package:flutter/material.dart';

class AudioPreview extends StatefulWidget {
  final String url;
  const AudioPreview({Key? key, required this.url}) : super(key: key);

  @override
  _AudioPreviewState createState() => _AudioPreviewState();
}

class _AudioPreviewState extends State<AudioPreview> {
  final _player = SoundPlayer();

  @override
  void initState() {
    _player.init();
    super.initState();
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.purple[200],
        ),
        Center(child: buildPlay()),
      ],
    );
  }

  Widget buildPlay() {
    final isPlaying = _player.isPlaying;
    final IconData icon = isPlaying ? Icons.stop : Icons.play_arrow;
    return IconButton(
      onPressed: () async {
        await _player.togglePlay(
            voidCallback: () {
              setState(() {});
            },
            fileName: widget.url);
        setState(() {});
      },
      icon: Icon(
        icon,
        size: 35,
        color: Colors.white,
      ),
    );
  }
}
