import 'dart:io';

import 'package:agri/Utils/Utils.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:shared_preferences/shared_preferences.dart';

class UploadImagesScreen extends StatefulWidget {
  static const routeName = '/UploadImagesScreen';
  const UploadImagesScreen({Key? key}) : super(key: key);

  @override
  _UploadImagesScreenState createState() => _UploadImagesScreenState();
}

class _UploadImagesScreenState extends State<UploadImagesScreen> {
  bool isFirstLoad = true;
  String? screenType;
  ImagePicker imagePicker = ImagePicker();
  CollectionReference? imgRef;
  firebase_storage.Reference? ref;
  bool uploading = false;
  double val = 0;
  List<File> _images = [];
  // File? _image;

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

  Future selectImages() async {
    final pickedFile = await imagePicker.pickMultiImage();
    if (pickedFile != null) {
      setState(() {
        _images = pickedFile.map((file) => File(file.path)).toList();
      });
    }
  }

  uploadImages(List<File> images) async {
    uploading = true;
    setState(() {});
    if (images.isEmpty) return [];

    List<String> _downloadUrls = [];
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String id = prefs.getString('userId').toString();

    try {
      await Future.forEach(images, (File image) async {
        Reference ref = FirebaseStorage.instance
            .ref()
            .child(id)
            .child(screenType.toString())
            .child(image.path.split('/').last);
        // print(image.path.split('/').last);
        final UploadTask uploadTask = ref.putFile(File(image.path));
        final TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() {});
        final url = await taskSnapshot.ref.getDownloadURL();
        _downloadUrls.add(url);
      });
      if (_downloadUrls.isNotEmpty) {
        await Future.forEach(_downloadUrls, (element) {
          FirebaseFirestore.instance
              .collection("users")
              .doc(id)
              .collection(screenType.toString())
              .add({
            "url": element,
            "type": "image",
            "dateTime": DateTime.now()
          });
        });
      }
      uploading = false;
      setState(() {});
      Navigator.of(context).pop();
      return;
    } catch (e) {
      Utils.showSnackBar(context, "Error While Uploading Images",
          color: Colors.red);
    }
    uploading = false;
    setState(() {});
    return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upload Images'),
      ),
      body: _images.isEmpty
          ? Center(
              child: Text(
                'Upload Images',
                style: Theme.of(context).textTheme.headline5,
              ),
            )
          : Stack(
              children: [
                GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2 / 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  children: _images.map((image) => Image.file(image)).toList(),
                ),
                if (uploading) const Center(child: CircularProgressIndicator()),
              ],
            ),
      floatingActionButton: _images.isEmpty
          ? FloatingActionButton(
              onPressed: () async {
                await selectImages();
              },
              child: const Icon(Icons.add_a_photo),
            )
          : FloatingActionButton(
              onPressed: () async {
                await uploadImages(_images);
              },
              child: const Icon(Icons.cloud_upload),
            ),
    );
  }
}
