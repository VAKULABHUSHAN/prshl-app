import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class stdpro extends StatefulWidget {
  const stdpro({super.key});

  @override
  State<stdpro> createState() => _stdproState();
}

class _stdproState extends State<stdpro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back)),
        title: const Text(" use doller profile",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: MediaQuery.of(context).size.height/6,
                width: MediaQuery.of(context).size.width/1,
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height/8,
                      width: MediaQuery.of(context).size.width/3.5,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(200),
                      ),
                    ),
                    Text("STUDENT NAME")
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: MediaQuery.of(context).size.height/1.5,
                width: MediaQuery.of(context).size.width/1,
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child:
                      Text(
                        "Name :",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20 ),
                      ),

                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child:
                      Text(
                        "Date Of Birth :",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20 ),
                      ),

                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child:
                      Text(
                        "Blood Group:",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20 ),
                      ),

                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child:
                      Text(
                        "Father's name :",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20 ),
                      ),

                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child:
                      Text(
                        "mobile :",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20 ),
                      ),

                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child:
                      Text(
                        "Mother's name:",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20 ),
                      ),

                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child:
                      Text(
                        " Mobile:",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20 ),
                      ),

                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child:
                      Text(
                        "Address:",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20 ),
                      ),

                    ),

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Flexible(
                      child: Text(
                        "ATTENDANCE :",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 250,
                      width: 250,  // Set a fixed width for the pie chart
                      child: PieChart(
                        PieChartData(
                          borderData: FlBorderData(show: true),
                          sectionsSpace: 6,
                          centerSpaceRadius: 50,
                          sections: showingSections(),
                        ),
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
        value: 5,
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


