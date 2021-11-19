import 'package:agriadmin/Components/audio_preview.dart';
import 'package:agriadmin/Models/file_model.dart';
import 'package:agriadmin/Screens/reply_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class EquipmentScreen extends StatefulWidget {
  final String userId;
  const EquipmentScreen({Key? key, required this.userId}) : super(key: key);

  @override
  _EquipmentScreenState createState() => _EquipmentScreenState();
}

class _EquipmentScreenState extends State<EquipmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agri Equipment'),
        actions: [
          IconButton(
            icon: const Icon(Icons.message),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ReplyScreen(
                            userId: widget.userId,
                            type: "EquipmentMessages",
                          )));
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection('users')
                  .doc(widget.userId)
                  .collection("Equipment")
                  .orderBy('dateTime', descending: true)
                  .snapshots(),
              builder: (context,
                  AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }
                final QuerySnapshot<Map<String, dynamic>>? data = snapshot.data;
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
              }),
          // Positioned(
          //   bottom: 10,
          //   left: 0,
          //   right: 0,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: [
          //       ElevatedButton.icon(
          //           style: ElevatedButton.styleFrom(
          //               elevation: 6,
          //               padding: const EdgeInsets.symmetric(
          //                   vertical: 10, horizontal: 20)),
          //           onPressed: () {
          //             Navigator.of(context)
          //                 .pushNamed(UploadImagesScreen.routeName, arguments: {
          //               'collection': "Equipment",
          //             });
          //           },
          //           icon: const Icon(Icons.add_a_photo),
          //           label: Text("Upload Image".toUpperCase())),
          //       ElevatedButton.icon(
          //           style: ElevatedButton.styleFrom(
          //               elevation: 6,
          //               padding: const EdgeInsets.symmetric(
          //                   vertical: 10, horizontal: 20)),
          //           onPressed: () {
          //             Navigator.of(context)
          //                 .pushNamed(AudioScreen.routeName, arguments: {
          //               'collection': "Equipment",
          //             });
          //           },
          //           icon: const Icon(Icons.audiotrack),
          //           label: Text("Upload Audio".toUpperCase()))
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
