import 'package:flutter_sound_lite/flutter_sound.dart';
import 'package:permission_handler/permission_handler.dart';

const fileName = "audio_Agri.aac";

class SoundRecorder {
  FlutterSoundRecorder? _flutterSoundRecorder;
  bool _isRecorderInitialized = false;

  bool get isRecording => _flutterSoundRecorder!.isRecording;

  Future<String> getFileUrl() async {
    final fileUrl = await _flutterSoundRecorder!.getRecordURL(path: fileName);
    return fileUrl.toString();
  }

  Future _record() async {
    if (!_isRecorderInitialized) {
      return;
    }
    await _flutterSoundRecorder!.startRecorder(toFile: fileName);
  }

  Future _stop() async {
    if (!_isRecorderInitialized) {
      return;
    }
    await _flutterSoundRecorder!.stopRecorder();
  }

  Future toggleRecording() async {
    if (_flutterSoundRecorder!.isRecording) {
      await _stop();
    } else {
      await _record();
    }
  }

  Future init() async {
    _flutterSoundRecorder = FlutterSoundRecorder();

    final status = await Permission.microphone.request();
    if (status != PermissionStatus.granted) {
      throw RecordingPermissionException("Permission not granted");
    }
    await _flutterSoundRecorder!.openAudioSession();
    _isRecorderInitialized = true;
  }

  void dispose() {
    _flutterSoundRecorder!.closeAudioSession();
    _flutterSoundRecorder = null;
    _isRecorderInitialized = false;
  }
}
