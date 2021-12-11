import 'package:flutter/material.dart';

class Fert extends StatelessWidget {
  const Fert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
            children: <Widget>[
              SizedBox(
                height: 70,
                child: Card(
                  child: const Center(child:Text("పోషణ నిర్వహణ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
                  color: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.white70, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Center(
                child: GridView.count(
                  shrinkWrap: true,
        crossAxisCount: 2,
        padding: const EdgeInsets.all(3.0),
        children: <Widget>[
          Card(
            child: const Center(child:Text("1  ఎకరం",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),)),
            color: Colors.blueAccent,
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.white70, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Card(
            child: const Center(child:Text('''
ఎన్ పి కె శాతం

నైట్రోజన్ : 120KG
ఫాస్ఫరస్ : 24KG
పొటాషియం : 48KG
            ''',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),)),
            color: Colors.blueAccent,
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.white70, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Card(
            child: const Center(child:Text('''

యూరియా : 260KG
ఎస్ ఎస్ పి : 150KG
ఎం ఓ పి : 80KG
            ''',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),)),
            color: Colors.blueAccent,
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.white70, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Card(
            child: const Center(child:Text('''

యూరియా : 46%
ఎస్ ఎస్ పి : 16%
ఎం ఓ పి : 60%
            ''',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),)),
            color: Colors.blueAccent,
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.white70, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ]

                ),
              )
            ],
          )),
    );
  }
}
