import 'package:agri/Screens/equipment_screen.dart';
import 'package:agri/Screens/home_screen.dart';
import 'package:agri/diseases.dart';
import 'package:agri/fert.dart';
import 'package:agri/irri.dart';
import 'package:agri/mark.dart';
import 'package:agri/types.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ముఖ పుట'),
        ),
        body: const BodyLayout());
  }
}

class BodyLayout extends StatelessWidget {
  const BodyLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  final titles = [
    'రకాలు',
    'వ్యాధులు',
    'వ్యాధి నిర్వహణ',
    'పంట సంసిద్ధత',
    'పోషణ నిర్వహణ',
    'బిందు సేద్యం',
    'మార్కెటింగ్',
  ];

  final icons = [
    Icons.merge_type_sharp,
    Icons.merge_type_sharp,
    Icons.merge_type_sharp,
    Icons.merge_type_sharp,
    Icons.merge_type_sharp,
    Icons.merge_type_sharp,
    Icons.merge_type_sharp,
  ];
  final screens = [
    const Types(),
    const Diseases(),
    const HomeScreen(),
    const EquipmentScreen(),
    const Fert(),
    const Irr(),
    const Mark()
  ];

  return ListView.builder(
    itemCount: titles.length,
    itemBuilder: (context, index) {
      return Card(
        child: ListTile(
            leading: Icon(icons[index]),
            title: Text(
              titles[index],
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => screens[index]),
              );
            }),
        color: Colors.greenAccent,
      );
    },
  );
}
