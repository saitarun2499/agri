import 'package:agri/Components/audio_preview.dart';
import 'package:agri/Models/file_model.dart';
import 'package:agri/Screens/audio_screen.dart';
import 'package:agri/Screens/reply_screen.dart';
import 'package:agri/Screens/upload_images_screen.dart';
import 'package:agri/dashboard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/HomeScreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // print(userId + "Printing User ID");
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('వ్యాధి నిర్వహణ')),
        actions: [
          IconButton(
            icon: const Icon(Icons.message),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ReplyScreen(userId: userId, type: "CropsMessages")));
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          userId.isNotEmpty
              ? StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('users')
                      .doc(userId)
                      .collection("Crops")
                      .orderBy('dateTime', descending: true)
                      .snapshots(),
                  builder: (context,
                      AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>
                          snapshot) {
                    if (!snapshot.hasData) {
                      return Container();
                    }
                    final QuerySnapshot<Map<String, dynamic>>? data =
                        snapshot.data;
                    final dataDocs = data!.docs;
                    final List<FileModel> files = [];
                    for (var item in dataDocs) {
                      files.add(FileModel.fromJson(item));
                      // print(files[0].url);
                    }
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GridView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: files.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 3 / 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10),
                        itemBuilder: (context, index) {
                          return files[index].type == "image"
                              ? CachedNetworkImage(
                                  imageUrl: files[index].url,
                                  fit: BoxFit.cover,
                                  errorWidget: (context, url, error) =>
                                      const Icon(Icons.error))
                              : AudioPreview(
                                  url: files[index].url,
                                );
                        },
                      ),
                    );
                  })
              : const Center(child: CircularProgressIndicator()),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        elevation: 6,
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20)),
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(UploadImagesScreen.routeName, arguments: {
                        'collection': "Crops",
                      });
                    },
                    icon: const Icon(Icons.add_a_photo),
                    label: Text("Upload Image".toUpperCase())),
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        elevation: 6,
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20)),
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(AudioScreen.routeName, arguments: {
                        'collection': "Crops",
                      });
                    },
                    icon: const Icon(Icons.audiotrack),
                    label: Text("Upload Audio".toUpperCase()))
              ],
            ),
          )
        ],
      ),
    );
  }
}
