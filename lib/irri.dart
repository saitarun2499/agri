import 'package:agri/dashboard.dart';
import 'package:flutter/material.dart';

class Irr extends StatelessWidget {
  const Irr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: SizedBox(
                height: 90,
                child: Center(
                  child: InkWell(
                    child: Card(
                      child: const Center(child:Text("In Development please click here to go back to dashboard!",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
                      color: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.white70, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onTap: (){
                       Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Dash()),
                    );
                    },
                  ),
                ),
              ),
      )
    );
  }
}
