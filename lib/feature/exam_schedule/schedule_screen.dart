import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExamScheduleScreen extends StatelessWidget {
  const ExamScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Sınav Takvimi"),
      ),
      body: Center(
        child: DataTable(
          columns: const [
            DataColumn(label: Text("Ders")),
            DataColumn(label: Text("Tarih")),
            DataColumn(label: Text("Saat")),
          ],
          rows: [
            DataRow(cells: [
              const DataCell(Text("Analiz 1")),
              DataCell(Text(DateFormat("dd-MM KK:mm").format(DateTime.now()))),
              const DataCell(Text("Analiz 1")),
            ]),
            const DataRow(cells: [
              DataCell(Text("Analiz 1")),
              DataCell(Text("Analiz 1")),
              DataCell(Text("Analiz 1")),
            ]),
            const DataRow(cells: [
              DataCell(Text("Analiz 1")),
              DataCell(Text("Analiz 1")),
              DataCell(Text("Analiz 1")),
            ]),
            const DataRow(cells: [
              DataCell(Text("Analiz 1")),
              DataCell(Text("Analiz 1")),
              DataCell(Text("Analiz 1")),
            ]),
          ],
        ),
      ),
    );
  }
}
