import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../data/body_weight_data.dart';

class BodyWeightScreen extends StatelessWidget {
  const BodyWeightScreen();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Body Weight Ratios'),
          bottom: const TabBar(
            tabs: <Tab>[
              Tab(
                text: 'Dog',
                icon: Icon(MdiIcons.dog),
              ),
              Tab(
                text: 'Cat',
                icon: Icon(MdiIcons.cat),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const <Widget>[
                      Text(
                        'Body Mass (Kg)',
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        'Surface Area (M²)',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate.fixed(
                    ListTile.divideTiles(
                      context: context,
                      tiles: _buildList(bodyWeightDataDog),
                    ).toList(),
                  ),
                )
              ],
            ),
            CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const <Widget>[
                      Text(
                        'Body Mass (Kg)',
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        'Surface Area (M²)',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate.fixed(
                    ListTile.divideTiles(
                      context: context,
                      tiles: _buildList(bodyWeightDataCat),
                    ).toList(),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<ListTile> _buildList(List<MassAreaMap> map) {
    return map.map((entry) => _buildRow(entry.mass, entry.area)).toList();
  }

  ListTile _buildRow(String first, String second) {
    return ListTile(
      dense: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(first),
          Text(second),
        ],
      ),
    );
  }
}
