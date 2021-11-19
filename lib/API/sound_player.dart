import 'package:flutter/cupertino.dart';
import 'package:flutter_sound_lite/flutter_sound.dart';

const fileName = "audio_Agri.aac";

class SoundPlayer {
  FlutterSoundPlayer? _audioPlayer;
  bool get isPlaying => _audioPlayer!.isPlaying;
  Future init() async {
    _audioPlayer = FlutterSoundPlayer();

    await _audioPlayer!.openAudioSession();
  }

  Future<String> getAudioPath() async {
    final String? path = await _audioPlayer!.getResourcePath();
    return path.toString() + "/audio_Agri.aac";
  }

  void dispose() {
    _audioPlayer!.closeAudioSession();
    _audioPlayer = null;
  }

  Future _play(VoidCallback voidCallback, String fileName) async {
    await _audioPlayer!
        .startPlayer(fromURI: fileName, whenFinished: voidCallback);
  }

  Future _stop() async {
    await _audioPlayer!.stopPlayer();
  }

  Future togglePlay(
      {required VoidCallback voidCallback, required fileName}) async {
    if (_audioPlayer!.isPlaying) {
      await _stop();
    } else {
      await _play(voidCallback, fileName);
    }
  }
}
