import 'package:flutter/material.dart';

import '../../data/lab_reference_data.dart';

class LabNormalScreen extends StatefulWidget {
  const LabNormalScreen();

  @override
  State<StatefulWidget> createState() {
    return _LabNormalScreenState();
  }
}

class _LabNormalScreenState extends State<LabNormalScreen> {
  LabReferenceSet? _currentSet;

  @override
  void initState() {
    _currentSet = labReferences[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Normal Laboratory Values'),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Species:',
                  style: TextStyle(fontSize: 14),
                ),
                Padding(padding: EdgeInsets.all(8)),
                DropdownButton<LabReferenceSet>(
                  value: _currentSet,
                  style: TextStyle(color: Colors.white),
                  selectedItemBuilder: (_) => List<Widget>.generate(
                    labReferences.length,
                    (index) => Text(
                      labReferences[index].name,
                      style: TextStyle(color: Colors.white, height: 2.6),
                    ),
                  ),
                  items: List<DropdownMenuItem<LabReferenceSet>>.generate(
                    labReferences.length,
                    (index) => DropdownMenuItem(
                      value: labReferences[index],
                      child: Text(
                        labReferences[index].name,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  onChanged: (newValue) {
                    setState(() {
                      _currentSet = newValue;
                    });
                  },
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate.fixed(
              ListTile.divideTiles(
                context: context,
                tiles: _buildList(_currentSet),
              ).toList(),
            ),
          )
        ],
      ),
    );
  }

  List<ListTile> _buildList(LabReferenceSet? referenceSet) {
    return referenceSet?.list.map(_buildRow).toList() ?? [];
  }

  ListTile _buildRow(LabReference reference) {
    return ListTile(
      dense: true,
      title: Row(
        children: <Widget>[
          Expanded(child: Center(child: Text(reference.test))),
          Expanded(child: Center(child: Text(reference.value))),
        ],
      ),
    );
  }
}
