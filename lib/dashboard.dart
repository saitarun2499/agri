import 'package:agri/Screens/equipment_screen.dart';
import 'package:agri/Screens/home_screen.dart';
import 'package:agri/Utils/Utils.dart';
import 'package:agri/diseases.dart';
import 'package:agri/fert.dart';
import 'package:agri/irri.dart';
import 'package:agri/mark.dart';
import 'package:agri/types.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

String userId = "";

class Dash extends StatefulWidget {
  const Dash({Key? key}) : super(key: key);

  @override
  _DashState createState() => _DashState();
}

class _DashState extends State<Dash> {
  bool isFirstLoad = true;

  getUserId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String id = prefs.getString('userId').toString();
    // print(id);
    if (id == "null") {
      // print("Empty Id");
      DocumentSnapshot<Map<String, dynamic>> documentSnapshot =
          await FirebaseFirestore.instance
              .collection('UserIndex')
              .doc("UserIndexDoc")
              .get();

      int userIndex = documentSnapshot.get("userIndex") as int;
      id = const Uuid().v4();
      prefs.setString('userId', id);
      userId = id;
      // print(userId);
      await FirebaseFirestore.instance.collection('users').doc(id).set({
        "userId": id,
        "dateTime": DateTime.now(),
        "userIndex": userIndex + 1
      }).then((value) async => {
            await FirebaseFirestore.instance
                .collection('UserIndex')
                .doc("UserIndexDoc")
                .update({"userIndex": userIndex + 1})
          });
    } else {
      // print(id);
      userId = id;
      // print(userId);
    }
    // await prefs.setInt('counter', counter);
    setState(() {});
  }

  @override
  void didChangeDependencies() {
    if (isFirstLoad) {
      getUserId();
    }
    isFirstLoad = false;

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "ముఖ పుట",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        )),
        elevation: 3,
        // backgroundColor: const Color.fromRGBO(49, 87, 110, 1.0),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(3.0),
        children: <Widget>[
          Card(
              elevation: 2.0,
              margin: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(220, 220, 220, 50.0)),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Types()),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    verticalDirection: VerticalDirection.down,
                    children: const <Widget>[
                      SizedBox(height: 50.0),
                      Center(
                          child: Icon(
                        Icons.merge_type_sharp,
                        size: 40.0,
                        color: Colors.red,
                      )),
                      SizedBox(height: 20.0),
                      Center(
                        child: Text("రకాలు",
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.black)),
                      )
                    ],
                  ),
                ),
              )),
          Card(
              elevation: 2.0,
              margin: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(220, 220, 220, 50.0)),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Diseases()),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    verticalDirection: VerticalDirection.down,
                    children: const <Widget>[
                      SizedBox(height: 50.0),
                      Center(
                          child: Icon(
                        Icons.adb,
                        size: 40.0,
                        color: Colors.red,
                      )),
                      SizedBox(height: 20.0),
                      Center(
                        child: Text("వ్యాధులు",
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.black)),
                      )
                    ],
                  ),
                ),
              )),
          Card(
              elevation: 2.0,
              margin: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(220, 220, 220, 50.0)),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    verticalDirection: VerticalDirection.down,
                    children: const <Widget>[
                      SizedBox(height: 50.0),
                      Center(
                          child: Icon(
                        Icons.add_moderator_rounded,
                        size: 40.0,
                        color: Colors.red,
                      )),
                      SizedBox(height: 20.0),
                      Center(
                        child: Text("వ్యాధి నిర్వహణ",
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.black)),
                      )
                    ],
                  ),
                ),
              )),
          Card(
              elevation: 2.0,
              margin: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(220, 220, 220, 50.0)),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EquipmentScreen()),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    verticalDirection: VerticalDirection.down,
                    children: const <Widget>[
                      SizedBox(height: 50.0),
                      Center(
                          child: Icon(
                        Icons.alt_route,
                        size: 40.0,
                        color: Colors.red,
                      )),
                      SizedBox(height: 20.0),
                      Center(
                        child: Text("పంట సంసిద్ధత",
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.black)),
                      )
                    ],
                  ),
                ),
              )),
          Card(
              elevation: 2.0,
              margin: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(220, 220, 220, 50.0)),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Fert()),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    verticalDirection: VerticalDirection.down,
                    children: const <Widget>[
                      SizedBox(height: 50.0),
                      Center(
                          child: Icon(
                        Icons.nature,
                        size: 40.0,
                        color: Colors.red,
                      )),
                      SizedBox(height: 20.0),
                      Center(
                        child: Text("పోషణ నిర్వహణ",
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.black)),
                      )
                    ],
                  ),
                ),
              )),
          Card(
              elevation: 2.0,
              margin: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(220, 220, 220, 50.0)),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Irr()),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    verticalDirection: VerticalDirection.down,
                    children: const <Widget>[
                      SizedBox(height: 50.0),
                      Center(
                          child: Icon(
                        Icons.water,
                        size: 40.0,
                        color: Colors.red,
                      )),
                      SizedBox(height: 20.0),
                      Center(
                        child: Text("బిందు సేద్యం",
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.black)),
                      )
                    ],
                  ),
                ),
              )),
          Card(
              elevation: 2.0,
              margin: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(220, 220, 220, 50.0)),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Mark()),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    verticalDirection: VerticalDirection.down,
                    children: const <Widget>[
                      SizedBox(height: 50.0),
                      Center(
                          child: Icon(
                        Icons.rate_review,
                        size: 40.0,
                        color: Colors.red,
                      )),
                      SizedBox(height: 20.0),
                      Center(
                        child: Text("మార్కెటింగ్",
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.black)),
                      )
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
