import 'dart:io';

import 'package:agri/API/sound_player.dart';
import 'package:agri/API/sound_recorder.dart';
import 'package:agri/Utils/utils.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

class AudioScreen extends StatefulWidget {
  static const routeName = '/AudioScreen';
  const AudioScreen({Key? key}) : super(key: key);

  @override
  _AudioScreenState createState() => _AudioScreenState();
}

class _AudioScreenState extends State<AudioScreen> {
  bool isFirstLoad = true;
  String? screenType;
  final _soundRecorder = SoundRecorder();
  final _player = SoundPlayer();
  bool uploading = false;

  uploadImages(String fileURL) async {
    uploading = true;
    setState(() {});

    String _downloadUrls;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String id = prefs.getString('userId').toString();
    final String fileName = const Uuid().v4() + '.aac';
    // print(fileName);
    try {
      Reference ref = FirebaseStorage.instance
          .ref()
          .child(id)
          .child(screenType.toString())
          .child(fileName);
      final UploadTask uploadTask = ref.putFile(File(fileURL));
      final TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() {
        // print("Upload Done");
      });
      final url = await taskSnapshot.ref.getDownloadURL();
      _downloadUrls = url;

      if (_downloadUrls.isNotEmpty) {
        FirebaseFirestore.instance
            .collection("users")
            .doc(id)
            .collection(screenType.toString())
            .add({"url": url, "type": "audio", "dateTime": DateTime.now()});
      }
      uploading = false;
      setState(() {});
      Navigator.of(context).pop();
      return;
    } catch (e) {
      // print(e);
      Utils.showSnackBar(context, "Error While Uploading Audio",
          color: Colors.red);
    }
    uploading = false;
    setState(() {});
    return;
  }

  @override
  void didChangeDependencies() {
    if (isFirstLoad) {
      final args =
          ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
      screenType = args["collection"] ?? "";
      setState(() {});
    }
    isFirstLoad = false;
    super.didChangeDependencies();
  }

  @override
  void initState() {
    _soundRecorder.init();
    _player.init();
    super.initState();
  }

  @override
  void dispose() {
    _soundRecorder.dispose();
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Audio'),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildStart(),
            const SizedBox(
              height: 30,
            ),
            buildPlay(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final String filePath = await _soundRecorder.getFileUrl();

          uploadImages(filePath);
        },
        child: const Icon(Icons.cloud_upload),
      ),
    );
  }

  Widget buildStart() {
    final isRecording = _soundRecorder.isRecording;
    final icon = isRecording ? Icons.stop : Icons.mic;
    final text = isRecording ? 'Stop' : 'Record';
    final color = isRecording ? Colors.red : Colors.white;
    final onPrimary = isRecording ? Colors.white : Colors.black;
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(175, 50),
          primary: color,
          onPrimary: onPrimary),
      onPressed: () async {
        await _soundRecorder.toggleRecording();
        setState(() {});
      },
      icon: Icon(icon),
      label: Text(
        text.toUpperCase(),
      ),
    );
  }

  Widget buildPlay() {
    final isPlaying = _player.isPlaying;
    final IconData icon = isPlaying ? Icons.stop : Icons.play_arrow;
    final String text = isPlaying ? 'Stop Playing' : 'Play Recording';
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(175, 50),
          primary: Colors.white,
          onPrimary: Colors.black),
      onPressed: () async {
        await _player.togglePlay(
            voidCallback: () {
              setState(() {});
            },
            fileName: "audio_Agri.aac");
        setState(() {});
      },
      icon: Icon(icon),
      label: Text(
        text.toUpperCase(),
      ),
    );
  }
}
