import 'package:cloud_firestore/cloud_firestore.dart';

class ReplyModel {
  final String reply;
  final Timestamp timestamp;

  ReplyModel({required this.reply, required this.timestamp});
  factory ReplyModel.fromJson(QueryDocumentSnapshot snapshot) {
    Map<String, dynamic> data = snapshot.data()! as Map<String, dynamic>;
    return ReplyModel(
      reply: data['reply'],
      timestamp: data['time'],
    );
  }
}
