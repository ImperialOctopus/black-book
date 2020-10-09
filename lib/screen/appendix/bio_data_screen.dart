import 'package:flutter/material.dart';

import '../../data/biological_data.dart';

class BioDataScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BioDataScreenState();
}

class _BioDataScreenState extends State<BioDataScreen> {
  @override
  Widget build(BuildContext context) {
    final shortestSide = MediaQuery.of(context).size.shortestSide;
    final useMobileLayout = shortestSide < 600;

    return Scaffold(
      appBar: AppBar(
        title: Text('Biological Data'),
      ),
      body: useMobileLayout ? _buildMobile() : _buildTablet(),
    );
  }

  Widget _buildMobile() {
    return ListView.builder(
      itemCount: bioData.length,
      itemBuilder: (context, index) {
        final _bioData = bioData[index];
        return ExpansionTile(
          title: Text(_bioData.species),
          children: <Widget>[
            ListTile(
              title: const Text('Temperature (℃)'),
              subtitle: Text(_bioData.tempString),
            ),
            ListTile(
              title: const Text('Heart Rate (/min)'),
              subtitle: Text(_bioData.heartString),
            ),
            ListTile(
              title: const Text('Respiration Rate (/min)'),
              subtitle: Text(_bioData.respString),
            ),
            ListTile(
              title: const Text('Oestrus Cycle Length (days)'),
              subtitle: Text(_bioData.oestrusString),
            ),
            ListTile(
              title: const Text('Gestation Period (days)'),
              subtitle: Text(_bioData.gestationString),
            ),
          ],
        );
      },
    );
  }

  Widget _buildTablet() {
    return SingleChildScrollView(
      child: DataTable(
        columns: <DataColumn>[
          DataColumn(
            label: const Text('Species'),
          ),
          DataColumn(
            label: const Text('Temp (℃)'),
          ),
          DataColumn(
            label: const Text('Heart Rate (/min)'),
          ),
          DataColumn(
            label: const Text('Respiration Rate (/min)'),
          ),
          DataColumn(
            label: const Text('Oestrus Cycle Length (days)'),
          ),
          DataColumn(
            label: const Text('Gestation Period (days)'),
          ),
        ],
        rows: List<DataRow>.generate(
          bioData.length,
          (index) {
            final _bioData = bioData[index];
            return DataRow.byIndex(index: index, cells: <DataCell>[
              DataCell(Text('${_bioData.species}')),
              DataCell(Text('${_bioData.tempString}')),
              DataCell(Text('${_bioData.heartString}')),
              DataCell(Text('${_bioData.respString}')),
              DataCell(Text('${_bioData.oestrusString}')),
              DataCell(Text('${_bioData.gestationString}')),
            ]);
          },
        ),
      ),
    );
  }
}
