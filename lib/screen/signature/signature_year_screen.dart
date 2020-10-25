import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SignatureYearScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practical Sign-Off'),
      ),
      body: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: <Widget>[
            ListTile(
              leading: const Icon(MdiIcons.numeric4CircleOutline),
              title: const Text('Fourth Year'),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.of(context).pushNamed('/practical/four');
              },
            ),
            ListTile(
              leading: const Icon(MdiIcons.numeric5CircleOutline),
              title: const Text('Fifth Year'),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.of(context).pushNamed('/practical/five');
              },
            ),
            ListTile(
              leading: const Icon(MdiIcons.numeric6CircleOutline),
              title: const Text('Sixth Year'),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.of(context).pushNamed('/practical/six');
              },
            ),
          ],
        ).toList(),
      ),
    );
  }
}
