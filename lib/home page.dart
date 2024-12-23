import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

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
        leading: Icon(Icons.menu, color: Colors.white, size: 25),
        title: const Text(
          "MENU",
          style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Hello ", style: TextStyle(fontSize: 25)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height/3.5,
                width: MediaQuery.of(context).size.width/1.05,
                decoration:BoxDecoration(
                  color: Colors.blue.shade200,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Flexible(
                      child: Text(
                        "ATTENDANCE :",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    // Add a SizedBox to limit the PieChart's width
                    SizedBox(
                      height: 250,
                      width: 250,  // Set a fixed width for the pie chart
                      child: PieChart(
                        PieChartData(
                          borderData: FlBorderData(show: false),
                          sectionsSpace: 0,
                          centerSpaceRadius: 40,
                          sections: showingSections(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                        height: MediaQuery.of(context).size.height/3.5,
                        width: MediaQuery.of(context).size.width/1.05,
                         decoration:BoxDecoration(
                color: Colors.blue.shade200,
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Recent Announcements :",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Dear Students, Parents, and Staff,We would like to inform you that the school will remain closed on [Date] due to [reason for leave, e.g., public holiday, maintenance work, adverse weather conditions, etc.].All classes, activities, and events scheduled for this day will be postponed. Please keep an eye on your emails, messages, and our official website for any further updates regarding rescheduling or important announcements.",style: TextStyle(fontSize: 15),),
                  ),
                ],
              ),
              ),
            )
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
