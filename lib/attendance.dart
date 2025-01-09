import 'package:flutter/material.dart';

class att extends StatefulWidget {
  const att({super.key});

  @override
  State<att> createState() => _attState();
}

class _attState extends State<att> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
        title: Text("ATTENDANCE",style: TextStyle(fontSize: 25,color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
