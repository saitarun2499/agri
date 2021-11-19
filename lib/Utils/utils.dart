// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';

class Utils {
  static showSnackBar(BuildContext context, String message,
      {Color color = Colors.black87}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
      ),
    );
  }
}
