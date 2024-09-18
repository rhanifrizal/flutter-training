import 'package:flutter/material.dart';

class TableLayout extends StatelessWidget {
  const TableLayout({super.key});
  @override
  Widget build(BuildContext context) {
    const String title = "Table Layout";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Table(
          // To add borders to cells
          border: TableBorder.all(),
          // IntrinsicColumnWidth will set the column based on the width of
          // the content in each cell
          // defaultColumnWidth: const IntrinsicColumnWidth(),
          columnWidths: const {
            // This is a way to custom width of each column
            0: FixedColumnWidth(100.0),
            1: FlexColumnWidth(),
            2: FixedColumnWidth(100.0),
          },
          children: const [
            TableRow(
              // All customization for the row can be done in decoration
              // The properties is the same as container
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              children: [
                TableCell(child: Center(child: Text("Header 1"))),
                TableCell(child: Center(child: Text("Header 2"))),
                TableCell(child: Center(child: Text("Header 3"))),
              ],
            ),
            TableRow(
              children: [
                TableCell(child: Center(child: Text("Row 1 Cell 1"))),
                TableCell(child: Center(child: Text("Row 1 Cell 2"))),
                TableCell(child: Center(child: Text("Row 1 Cell 3"))),
              ],
            ),
            TableRow(
              children: [
                TableCell(child: Center(child: Text("Row 2 Cell 1"))),
                TableCell(child: Center(child: Text("Row 2 Cell 2"))),
                TableCell(child: Center(child: Text("Row 2 Cell 3"))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
