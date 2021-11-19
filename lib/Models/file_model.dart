import 'package:cloud_firestore/cloud_firestore.dart';

class FileModel {
  final String type;
  final String url;
  final Timestamp dateTime;
  FileModel({required this.type, required this.url, required this.dateTime});

  factory FileModel.fromJson(QueryDocumentSnapshot snapshot) {
    Map<String, dynamic> data = snapshot.data()! as Map<String, dynamic>;
    return FileModel(
        type: data['type'], url: data['url'], dateTime: data['dateTime']);
  }
}
