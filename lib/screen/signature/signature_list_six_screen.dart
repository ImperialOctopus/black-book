import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../component/signature/list_card.dart';
import '../../component/signature/signature_list_item.dart';

class SignatureListSix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sixth Year Practicals')),
      body: ListView(
        children: const [
          ListCard(
            title: ListTile(
              leading: Icon(MdiIcons.fountainPenTip),
              title: Text('VSCS Meetings'),
            ),
            children: [
              SignatureListItem(
                title: Text('Michaelmas'),
                entryLabel: Text('6th Year - VSCS (Michaelmas)'),
                reference: '5_vscs_1',
              ),
              SignatureListItem(
                title: Text('Lent'),
                entryLabel: Text('6th Year - VSCS (Lent)'),
                reference: '5_vscs_2',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
