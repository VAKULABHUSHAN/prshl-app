import 'package:flutter/material.dart';
import 'package:preschool/home%20page.dart';
import 'package:preschool/profile%20page.dart';




class Botnavi extends StatefulWidget {
  const Botnavi({super.key});

  @override
  State<Botnavi> createState() => _BotnaviState();
}

class _BotnaviState extends State<Botnavi> {

  int index=0;

  final pages =[
    const hp(),
    const npp(),

  ];


  void tap(a)
  {
    setState(() {
      index =a;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.blue,),label: "Home ",),
         // BottomNavigationBarItem(icon: Icon(Icons.speaker_notes,color: Colors.blue,),label: "Announcements" ),
          BottomNavigationBarItem(icon: Icon(Icons.calculate_sharp,color: Colors.blue,),label: "Profile" ),

        ],
        currentIndex: index,
        onTap: tap,
      ),
      backgroundColor: Colors.black,
    );
  }
}