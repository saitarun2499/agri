import 'package:agriadmin/Components/navigation_bar.dart';
import 'package:agriadmin/Models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

// String userId = "";

class HomeScreen extends StatefulWidget {
  static const String routeName = '/HomeScreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isFirstLoad = true;

  // getUserId() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String id = prefs.getString('userId').toString();
  //   // print(id);
  //   if (id == "null") {
  //     // print("Empty Id");
  //     id = const Uuid().v4();
  //     prefs.setString('userId', id);
  //     userId = id;
  //     // print(userId);
  //     await FirebaseFirestore.instance.collection('users').doc(id).set({
  //       "userId": id,
  //       "dateTime": DateTime.now(),
  //     });
  //   } else {
  //     // print(id);
  //     userId = id;
  //     // print(userId);
  //   }
  //   // await prefs.setInt('counter', counter);
  //   setState(() {});
  // }

  // @override
  // void didChangeDependencies() {
  //   if (isFirstLoad) {
  //     getUserId();
  //   }
  //   isFirstLoad = false;

  //   super.didChangeDependencies();
  // }

  @override
  Widget build(BuildContext context) {
    // print(userId + "Printing User ID");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agri Admin'),
      ),
      body: Stack(
        children: [
          StreamBuilder(
              stream:
                  FirebaseFirestore.instance.collection('users').snapshots(),
              builder: (context,
                  AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }
                final QuerySnapshot<Map<String, dynamic>>? data = snapshot.data;
                final dataDocs = data!.docs;
                final List<UserModel> files = [];
                for (var item in dataDocs) {
                  files.add(UserModel.fromJson(item));
                  // print(files[0].userId);
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
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => NavigationBar(
                                userId: files[index].userId,
                              ),
                            ),
                          );
                        },
                        child: Container(
                          color: Colors.purple[300],
                          child: Center(
                            child: Text(
                              "User " + (index + 1).toString().toUpperCase(),
                              style: Theme.of(context).textTheme.headline5,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
              }),
        ],
      ),
    );
  }
}
