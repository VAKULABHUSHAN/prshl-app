import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:preschool/attendance.dart';
import 'package:preschool/student%20.dart';

class hp extends StatefulWidget {
  const hp({super.key});

  @override
  State<hp> createState() => _hpState();
}

class _hpState extends State<hp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu, color: Colors.white, size: 25),
              onPressed: () {
                Scaffold.of(context).openDrawer(); // Open the drawer when the menu icon is tapped
              },
            );
          },
        ),
        title: const Text(
          "MENU",
          style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue.shade100,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.account_circle, size: 100, color: Colors.white),
                  Text('User Name', style: TextStyle(fontSize: 20, color: Colors.white)),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 16,
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                color: Colors.blue.shade200,
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                title: const Row(
                  children: [
                    Icon(Icons.assignment),
                    SizedBox(width: 20),
                    Text('attendance', style: TextStyle(fontSize: 20)),
                  ],
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => att()));
                },
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height / 16,
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                color: Colors.blue.shade200,
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                title: const Row(
                  children: [
                    Icon(Icons.calendar_month),
                    SizedBox(width: 20),
                    Text('Calendar', style: TextStyle(fontSize: 20)),
                  ],
                ),
                // onTap: () {
                //   Navigator.push(context, MaterialPageRoute(builder: (context) => CalendarPage()));
                // },
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height / 16,
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                color: Colors.blue.shade200,
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                title: const Row(
                  children: [
                    Icon(Icons.person),
                    SizedBox(width: 20),
                    Text('Student Details', style: TextStyle(fontSize: 20)),
                  ],
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => std()));
                },
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height / 16,
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                color: Colors.blue.shade200,
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                title: const Row(
                  children: [
                    Icon(Icons.menu_book_rounded),
                    SizedBox(width: 20),
                    Text('Lesson Plan', style: TextStyle(fontSize: 20)),
                  ],
                ),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                },
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height / 16,
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                color: Colors.blue.shade200,
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                title: const Row(
                  children: [
                    Icon(Icons.account_circle_outlined),
                    SizedBox(width: 20),
                    Text('Profile', style: TextStyle(fontSize: 20)),
                  ],
                ),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                },
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Hello", style: TextStyle(fontSize: 25)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width / 1.05,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade200,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Flexible(
                        child: Text(
                          "ATTENDANCE:",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        height: 150,
                        width: 250,
                        child: PieChart(
                          PieChartData(
                            borderData: FlBorderData(show: false),
                            sectionsSpace: 2,
                            centerSpaceRadius: 40,
                            sections: showingSections(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => att()));
                },
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width / 1.05,
                decoration: BoxDecoration(
                  color: Colors.blue.shade200,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Recent Announcements:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Dear Students, Parents, and Staff, We would like to inform you that the school will remain closed on [Date] due to [reason for leave, e.g., public holiday, maintenance work, adverse weather conditions, etc.]. All classes, activities, and events scheduled for this day will be postponed. Please keep an eye on your emails, messages, and our official website for any further updates regarding rescheduling or important announcements.",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return [
      PieChartSectionData(
        color: Colors.blue,
        value: 40,
        title: 'present %',
        radius: 50,
        titleStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      PieChartSectionData(
        color: Colors.green,
        value: 30,
        title: 'absent %',
        radius: 50,
        titleStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      PieChartSectionData(
        color: Colors.orange,
        value: 20,
        title: 'OD or ML%',
        radius: 50,
        titleStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ];
  }
}
