import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../component/signature/list_card.dart';
import '../../component/signature/signature_list_item.dart';

class PracticalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Practical Sign-Off')),
      body: ListView(
        children: const [
          ListCard(
            children: [
              ListTile(
                leading: Icon(MdiIcons.rabbit),
                title: Text('Fourth Year - Small Animal Clinical Studies'),
              ),
              Divider(),
              SignatureListItem(
                title: Text('Session 1'),
                reference: '4_clinical_small_1',
              ),
              SignatureListItem(
                title: Text('Session 2'),
                reference: '4_clinical_small_2',
              ),
              SignatureListItem(
                title: Text('Session 3'),
                reference: '4_clinical_small_3',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
