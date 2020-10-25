import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../component/signature/list_card.dart';
import '../../component/signature/signature_list_item.dart';

class SignatureListFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fourth Year Practicals')),
      body: ListView(
        children: const [
          ListCard(
            title: ListTile(
              leading: Icon(MdiIcons.rabbit),
              title: Text('Small Animal Clinical Studies'),
            ),
            children: [
              SignatureListItem(
                title: Text('Session 1'),
                reference: '4_small_1',
              ),
              SignatureListItem(
                title: Text('Session 2'),
                reference: '4_small_2',
              ),
              SignatureListItem(
                title: Text('Session 3'),
                reference: '4_small_3',
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
                title: Text('Cattle Handling'),
                reference: '4_farm_cattle',
              ),
              SignatureListItem(
                title: Text('Sheep Handling'),
                reference: '4_farm_sheep',
              ),
              SignatureListItem(
                title: Text('Clinical Methods - Sheep'),
                reference: '4_farm_sheep_methods',
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
                reference: '4_equine_1',
              ),
              SignatureListItem(
                title: Text('Session 2'),
                reference: '4_equine_2',
              ),
            ],
          ),
          ListCard(
            title: ListTile(
              leading: Icon(MdiIcons.radiologyBox),
              title: Text('Radiography Class & Report'),
            ),
            children: [
              SignatureListItem(
                title: Text('Session 1'),
                reference: '4_radio_1',
              ),
              SignatureListItem(
                title: Text('Session 2'),
                reference: '4_radio_2',
              ),
              SignatureListItem(
                title: Text('Report'),
                reference: '4_radio_report',
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
                reference: '4_seminar_public_health',
              ),
              SignatureListItem(
                title: Text('Pathology'),
                reference: '4_seminar_pathology',
              ),
              SignatureListItem(
                title: Text('Consultation Skills 1'),
                reference: '4_seminar_consultation_1',
              ),
              SignatureListItem(
                title: Text('Consultation Skills 2'),
                reference: '4_seminar_consultation_2',
              ),
            ],
          ),
          ListCard(
            title: ListTile(
              leading: Icon(MdiIcons.store),
              title: Text('Abattoir'),
            ),
            children: [
              SignatureListItem(
                title: Text('Visit 1'),
                reference: '4_abattoir_1',
              ),
              SignatureListItem(
                title: Text('Visit 2'),
                reference: '4_abattoir_2',
              ),
            ],
          ),
          ListCard(
            title: ListTile(
              leading: Icon(MdiIcons.paw),
              title: Text('RSPCA Clinic'),
            ),
            children: [
              SignatureListItem(
                title: Text('Visit 1'),
                reference: '4_rspca_1',
              ),
              SignatureListItem(
                title: Text('Visit 2'),
                reference: '4_rspca_2',
              ),
              SignatureListItem(
                title: Text('Visit 3'),
                reference: '4_rspca_3',
              ),
            ],
          ),
          ListCard(
            title: ListTile(
              leading: Icon(MdiIcons.snake),
              title: Text('Exotics Class (College of West Anglia at Milton)'),
            ),
            children: [
              SignatureListItem(
                title: Text('Exotics Class'),
                reference: '4_exotics',
              ),
            ],
          ),
          ListCard(
            title: ListTile(
              leading: Icon(MdiIcons.fridgeIndustrialOutline),
              title: Text('Post-Mortem Class'),
            ),
            children: [
              SignatureListItem(
                title: Text('Session 1'),
                reference: '4_pm_1',
              ),
              SignatureListItem(
                title: Text('Session 2'),
                reference: '4_pm_2',
              ),
              SignatureListItem(
                title: Text('Session 3'),
                reference: '4_pm_3',
              ),
              SignatureListItem(
                title: Text('Session 4'),
                reference: '4_pm_4',
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
                reference: '4_vscs_1',
              ),
              SignatureListItem(
                title: Text('Lent'),
                reference: '4_vscs_2',
              ),
              SignatureListItem(
                title: Text('Easter'),
                reference: '4_vscs_3',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
