import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Bilan extends StatefulWidget {
  @override
  _BilanState createState() => _BilanState();
}

class _BilanState extends State<Bilan> {
  final List<FlSpot> weeklyData = [
    FlSpot(0, 3),
    FlSpot(1, 2),
    FlSpot(2, 5),
    FlSpot(3, 4),
    FlSpot(4, 6),
    FlSpot(5, 5),
    FlSpot(6, 7),
  ];

  final List<CarbonEntry> carbonHistory = [
    CarbonEntry(date: '2023-10-22', value: 13.5),
    CarbonEntry(date: '2023-10-15', value: 14.2),
    CarbonEntry(date: '2023-10-08', value: 13.7),
    CarbonEntry(date: '2023-10-01', value: 12.8),
    CarbonEntry(date: '2023-09-24', value: 13.9),
    CarbonEntry(date: '2023-09-17', value: 11.1),
    CarbonEntry(date: '2023-09-10', value: 10.3),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GreenImpact',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.green.shade300,
        automaticallyImplyLeading: false,
      ),
      body: Column(children: [
        // Courbe de l'empreinte carbone hebdomadaire
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: LineChart(
              LineChartData(
                gridData: FlGridData(show: false),
                titlesData: FlTitlesData(show: false),
                borderData: FlBorderData(show: false),
                minX: 0,
                maxX: 6,
                minY: 0,
                maxY: 10,
                lineBarsData: [
                  LineChartBarData(
                    spots: weeklyData,
                    isCurved: true,
                    color: Colors.green,
                    dotData: FlDotData(show: false),
                    belowBarData: BarAreaData(
                        show: true, color: Colors.green.withOpacity(0.2)),
                  ),
                ],
              ),
            ),
          ),
        ),
        // Historique des résultats d'empreinte carbone
        Expanded(
          flex: 5,
          child: Container(
            color: Colors.green,
            child: ListView.builder(
              itemCount: carbonHistory.length,
              itemBuilder: (context, index) {
                final entry = carbonHistory[index];
                return ListTile(
                  title: Text(
                    'Date: ${entry.date}',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text('Empreinte carbone: ${entry.value}',
                      style: TextStyle(color: Colors.white)),
                );
              },
            ),
          ),
        ),
      ]),
    );
  }
}

class CarbonEntry {
  final String date;
  final double value;

  CarbonEntry({required this.date, required this.value});
}
