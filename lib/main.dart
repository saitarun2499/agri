import 'package:agri/Screens/audio_screen.dart';
import 'package:agri/Screens/upload_images_screen.dart';
import 'package:agri/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agri',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.purple,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: const Home(),
      routes: {
        UploadImagesScreen.routeName: (context) => const UploadImagesScreen(),
        AudioScreen.routeName: (context) => const AudioScreen(),
      },
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SlashScreen());
  }
}
