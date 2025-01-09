import 'package:flutter/material.dart';
import 'package:preschool/student%20profile.dart';

class std extends StatefulWidget {
  const std({super.key});

  @override
  State<std> createState() => _stdState();
}

class _stdState extends State<std> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Container(
                height: MediaQuery.of(context).size.height/7,
                width: MediaQuery.of(context).size.width/1,
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                    child: Text("STUDENT IN CLASS ",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),)
                ),
              ),
            ),
            const SizedBox(height: 25,),
            GestureDetector(
              child: Container(
                height: MediaQuery.of(context).size.height/16,
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  color: Colors.blue.shade200,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const ListTile(
                  title: Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(width: 20,),
                      Text('Student 1 ',style: TextStyle(fontSize: 25),),
              
                    ],
                  ),
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>stdpro()));
              },
            ),
            const SizedBox(height: 10,),
            GestureDetector(
              child: Container(
                height: MediaQuery.of(context).size.height/16,
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  color: Colors.blue.shade200,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const ListTile(
                  title: Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(width: 20,),
                      Text('Student 2',style: TextStyle(fontSize: 25),),

                    ],
                  ),
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>stdpro()));
              },
            ),
            const SizedBox(height: 10,),
            GestureDetector(
              child: Container(
                height: MediaQuery.of(context).size.height/16,
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  color: Colors.blue.shade200,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const ListTile(
                  title: Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(width: 20,),
                      Text('Student 3 ',style: TextStyle(fontSize: 25),),

                    ],
                  ),
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>stdpro()));
              },
            ),
            const SizedBox(height: 10,),
            GestureDetector(
              child: Container(
                height: MediaQuery.of(context).size.height/16,
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  color: Colors.blue.shade200,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const ListTile(
                  title: Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(width: 20,),
                      Text('Student 4',style: TextStyle(fontSize: 25),),

                    ],
                  ),
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>stdpro()));
              },
            ),
            const SizedBox(height: 10,),
            GestureDetector(
              child: Container(
                height: MediaQuery.of(context).size.height/16,
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  color: Colors.blue.shade200,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const ListTile(
                  title: Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(width: 20,),
                      Text('Student 5 ',style: TextStyle(fontSize: 25),),

                    ],
                  ),
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>stdpro()));
              },
            ),
            const SizedBox(height: 10,),
            GestureDetector(
              child: Container(
                height: MediaQuery.of(context).size.height/16,
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  color: Colors.blue.shade200,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const ListTile(
                  title: Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(width: 20,),
                      Text('Student 6 ',style: TextStyle(fontSize: 25),),

                    ],
                  ),
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>stdpro()));
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.add),),
    );
  }
}
