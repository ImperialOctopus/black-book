import 'package:black_book/data/biological_data.dart';
import 'package:data_tables/data_tables.dart';
import 'package:flutter/material.dart';

class BioDataScreen extends StatefulWidget {
  const BioDataScreen();

  @override
  State<StatefulWidget> createState() => _BioDataScreenState();
}

class _BioDataScreenState extends State<BioDataScreen> {
  int _rowsPerPage = PaginatedDataTable.defaultRowsPerPage;
  int _sortColumnIndex;
  bool _sortAscending = true;

  @override
  void initState() {
    _items = _bioData;
    super.initState();
  }

  void _sort<T>(
      Comparable<T> getField(BioData d), int columnIndex, bool ascending) {
    _items.sort((BioData a, BioData b) {
      if (!ascending) {
        final BioData c = a;
        a = b;
        b = c;
      }
      final Comparable<T> aValue = getField(a);
      final Comparable<T> bValue = getField(b);
      return Comparable.compare(aValue, bValue);
    });
    setState(() {
      _sortColumnIndex = columnIndex;
      _sortAscending = ascending;
    });
  }

  List<BioData> _items = [];
  int _rowsOffset = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Native Data Table Example'),
        // ),
        body: NativeDataTable.builder(
          rowsPerPage: _rowsPerPage,
          itemCount: _items?.length ?? 0,
          firstRowIndex: _rowsOffset,
          handleNext: () async {
            setState(() {
              _rowsOffset += _rowsPerPage;
            });
          },
          handlePrevious: () {
            setState(() {
              _rowsOffset -= _rowsPerPage;
            });
          },
          mobileSlivers: <Widget>[
            SliverAppBar(
              title: Text("Biological & Reproductive Data"),
            ),
          ],
          itemBuilder: (int index) {
            final BioData bioData = _items[index];
            return DataRow.byIndex(index: index, cells: <DataCell>[
              DataCell(Text('${bioData.species}')),
              DataCell(Text('${bioData.tempString}')),
              DataCell(Text('${bioData.heartString}')),
              DataCell(Text('${bioData.respString}')),
              DataCell(Text('${bioData.oestrusString}')),
              DataCell(Text('${bioData.gestationString}')),
            ]);
          },
          header: const Text('Data Management'),
          sortColumnIndex: _sortColumnIndex,
          sortAscending: _sortAscending,
          onRowsPerPageChanged: (int value) {
            setState(() {
              _rowsPerPage = value;
            });
          },
          // mobileItemBuilder: (BuildContext context, int index) {
          //   final i = _desserts[index];
          //   return ListTile(
          //     title: Text(i?.name),
          //   );
          // },
          rowCountApproximate: true,
          mobileIsLoading: CircularProgressIndicator(),
          noItems: Text("No Items Found"),
          columns: <DataColumn>[
            DataColumn(
                label: const Text('Species'),
                onSort: (int columnIndex, bool ascending) => _sort<String>(
                    (BioData d) => d.species, columnIndex, ascending)),
            DataColumn(
                label: const Text('Temp (℃)'),
                tooltip:
                    'Temperature (℃)',
                numeric: true,
                onSort: (int columnIndex, bool ascending) => _sort<num>(
                    (BioData d) => d.tempSort, columnIndex, ascending)),
            DataColumn(
                label: const Text('Heart Rate (/min)'),
                numeric: true,
                onSort: (int columnIndex, bool ascending) =>
                    _sort<num>((BioData d) => d.heartSort, columnIndex, ascending)),
            DataColumn(
                label: const Text('Respiration Rate (/min)'),
                numeric: true,
                onSort: (int columnIndex, bool ascending) =>
                    _sort<num>((BioData d) => d.respSort, columnIndex, ascending)),
            DataColumn(
                label: const Text('Oestrus Cycle Length (days)'),
                numeric: true,
                onSort: (int columnIndex, bool ascending) => _sort<num>(
                    (BioData d) => d.oestrusSort, columnIndex, ascending)),
            DataColumn(
                label: const Text('Gestation Period (days)'),
                numeric: true,
                onSort: (int columnIndex, bool ascending) => _sort<num>(
                    (BioData d) => d.gestationSort, columnIndex, ascending)),
              ),
      ),
    );
  }

  final List<BioData> _bioData = <BioData>[
    BioData(
      'Horse',
      '3A7v.1e-3378..60',
      37.6,
      '28-44',
      30,
      '10-14',
      12,
      '21-23',
      22,
      '320-360',
      340,
    ),
    BioData(
      'Foal',
      '3AAAAAAAAA..60',
      37.5,
      '60-120',
      30,
      '10-14',
      12,
      '21-23',
      22,
      '320-360',
      340,
    ),
  ];
}
