import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../component/signature/list_card.dart';
import '../../component/signature/signature_list_item.dart';

class SignatureListFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fifth Year Practicals')),
      body: ListView(
        children: const [
          ListCard(
            title: ListTile(
              leading: Icon(MdiIcons.paw),
              title: Text('RSPCA Clinic'),
            ),
            children: [
              SignatureListItem(
                title: Text('Visit 1'),
                reference: '5_rspca_1',
              ),
              SignatureListItem(
                title: Text('Visit 2'),
                reference: '5_rspca_2',
              ),
              SignatureListItem(
                title: Text('Visit 3'),
                reference: '5_rspca_3',
              ),
              SignatureListItem(
                title: Text('Visit 4'),
                reference: '5_rspca_4',
              ),
              SignatureListItem(
                title: Text('Visit 5'),
                reference: '5_rspca_5',
              ),
              SignatureListItem(
                title: Text('Visit 6'),
                reference: '5_rspca_6',
              ),
              SignatureListItem(
                title: Text('Visit 7'),
                reference: '5_rspca_7',
              ),
            ],
          ),
          ListCard(
            title: ListTile(
              leading: Icon(MdiIcons.radiologyBox),
              title: Text('Radiology Class'),
            ),
            children: [
              SignatureListItem(
                title: Text('Session 1'),
                reference: '5_radio_1',
              ),
              SignatureListItem(
                title: Text('Session 2'),
                reference: '5_radio_2',
              ),
              SignatureListItem(
                title: Text('Session 3'),
                reference: '5_radio_3',
              ),
              SignatureListItem(
                title: Text('Session 4'),
                reference: '5_radio_4',
              ),
              SignatureListItem(
                title: Text('Session 5'),
                reference: '5_radio_5',
              ),
              SignatureListItem(
                title: Text('Session 6'),
                reference: '5_radio_6',
              ),
              SignatureListItem(
                title: Text('Session 7'),
                reference: '5_radio_7',
              ),
            ],
          ),
          ListCard(
            title: ListTile(
              leading: Icon(MdiIcons.cow),
              title: Text('Farm Animal Clinical Studies'),
            ),
            children: [
              SignatureListItem(
                title: Text('Session 1'),
                reference: '5_farm_1',
              ),
              SignatureListItem(
                title: Text('Session 2'),
                reference: '5_farm_2',
              ),
              SignatureListItem(
                title: Text('Session 3'),
                reference: '5_farm_3',
              ),
              SignatureListItem(
                title: Text('Footcare'),
                reference: '5_farm_footcare',
              ),
            ],
          ),
          ListCard(
            title: ListTile(
              leading: Icon(MdiIcons.horse),
              title: Text('Equine Clinical Studies'),
            ),
            children: [
              SignatureListItem(
                title: Text('Session 1'),
                reference: '5_equine_1',
              ),
              SignatureListItem(
                title: Text('Session 2'),
                reference: '5_equine_2',
              ),
              SignatureListItem(
                title: Text('Session 3'),
                reference: '5_equine_3',
              ),
            ],
          ),
          ListCard(
            title: ListTile(
              leading: Icon(MdiIcons.eggOutline),
              title: Text('Obstetrics & Gynaecology'),
            ),
            children: [
              SignatureListItem(
                title: Text('Gynaecology 1'),
                reference: '5_gynaecology_1',
              ),
              SignatureListItem(
                title: Text('Gynaecology 2'),
                reference: '5_gynaecology_2',
              ),
              SignatureListItem(
                title: Text('Obstetrics'),
                reference: '5_gynaecology_obst',
              ),
            ],
          ),
          ListCard(
            title: ListTile(
              leading: Icon(MdiIcons.book),
              title: Text('Seminars'),
            ),
            children: [
              SignatureListItem(
                title: Text('Public Health'),
                reference: '5_seminar_publichealth',
              ),
              SignatureListItem(
                title: Text('Communication Skills'),
                reference: '5_seminar_communication',
              ),
            ],
          ),
          ListCard(
            title: ListTile(
              leading: Icon(MdiIcons.cloudQuestion),
              title: Text('Other'),
            ),
            children: [
              SignatureListItem(
                title: Text('Clinical Pathology'),
                reference: '5_clinpath',
              ),
              SignatureListItem(
                title: Text('Neurology'),
                reference: '5_neuro',
              ),
              SignatureListItem(
                title: Text('Opthalmology'),
                reference: '5_opthalmology',
              ),
            ],
          ),
          ListCard(
            title: ListTile(
              leading: Icon(MdiIcons.fountainPenTip),
              title: Text('VSCS Meetings'),
            ),
            children: [
              SignatureListItem(
                title: Text('Michaelmas'),
                reference: '5_vscs_1',
              ),
              SignatureListItem(
                title: Text('Lent'),
                reference: '5_vscs_2',
              ),
              SignatureListItem(
                title: Text('Easter'),
                reference: '5_vscs_3',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
