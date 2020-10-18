import 'package:flutter/material.dart';

class AppendixScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appendix'),
      ),
      body: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: <Widget>[
            ListTile(
              title: const Text('Health & Safety'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.of(context)?.pushNamed('/appendix/safety');
              },
            ),
            ListTile(
              title: const Text('RCVS EMS Guidance'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.of(context)?.pushNamed('/appendix/rcvs');
              },
            ),
            ListTile(
              title: const Text('Biological Data'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.of(context)?.pushNamed('/appendix/biodata');
              },
            ),
            ListTile(
              title: const Text('Body Weight Ratios'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.of(context)?.pushNamed('/appendix/weight');
              },
            ),
            ListTile(
              title: const Text('Laboratory Samples & Profiles'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.of(context)?.pushNamed('/appendix/labprofiles');
              },
            ),
            ListTile(
              title: const Text('Normal Laboratory Values'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.of(context)?.pushNamed('/appendix/labnormal');
              },
            ),
            ListTile(
              title: const Text('Useful Addresses'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.of(context)?.pushNamed('/appendix/addresses');
              },
            ),
          ],
        ).toList(),
      ),
    );
  }
}
