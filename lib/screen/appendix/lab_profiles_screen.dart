// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LabProfilesScreen extends StatelessWidget {
  const LabProfilesScreen();

  static const TextStyle heading =
      TextStyle(fontSize: 28, fontWeight: FontWeight.bold);
  static const TextStyle title =
      TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
  static const TextStyle subtitle =
      TextStyle(fontSize: 16, fontStyle: FontStyle.italic);
  static const TextStyle body = TextStyle(fontSize: 16);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Laboratory Samples & Profiles'),
          bottom: TabBar(
            tabs: <Tab>[
              Tab(
                text: 'Small',
                icon: Icon(MdiIcons.cat),
              ),
              Tab(
                text: 'Ruminant',
                icon: Icon(MdiIcons.cow),
              ),
              Tab(
                text: 'Horse',
                icon: Icon(MdiIcons.horseshoe),
              ),
              Tab(
                text: 'Other',
                icon: Icon(MdiIcons.beaker),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const <Widget>[
                    Text(
                      'Small Animal',
                      style: heading,
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // HEADING
                    //
                    Text(
                      '1. Basic Profile',
                      style: title,
                    ),
                    Text(
                      'Sample: Heparin',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(4),
                    ),
                    Text(
                      'Protein, albumin, globulin, urea, creatinine, ALT, ALP, glucose, NA, K.',
                      style: body,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      '2. Extended profile',
                      style: title,
                    ),
                    Text(
                      'Sample: Heparin',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(4),
                    ),
                    Text(
                      'Basic profile + bilirubin, AST, CK, cholesterol, Ca, PO4, Cl, ionosed calcium.',
                      style: body,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      '3. Extended + amylase & lipase',
                      style: title,
                    ),
                    Text(
                      'Sample: Heparin',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(4),
                    ),
                    Text(
                      'Extended profile + amylase, lipase.',
                      style: body,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      '4. Renal Profile A',
                      style: title,
                    ),
                    Text(
                      'Sample: Heparin',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(4),
                    ),
                    Text(
                      'Urea, creatinine, protein, albumin, globulin, Na, K, Cl, Ca, PO4, ionised Ca.',
                      style: body,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      '5. Renal Profile B',
                      style: title,
                    ),
                    Text(
                      'Sample: Heparin + Urine',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(4),
                    ),
                    Text(
                      'Renal Profile A + urine dipstick and SG, urine sediment exam.',
                      style: body,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      '6. Liver Profile',
                      style: title,
                    ),
                    Text(
                      'Sample: Heparin + Urine',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(4),
                    ),
                    Text(
                      'Protein, albumin, globulin, ALT, AST, GGT, ALP, bilirubin, cholesterol, bile salts.',
                      style: body,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const <Widget>[
                    Text(
                      'Ruminants',
                      style: heading,
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // HEADING
                    //
                    Text(
                      '1. Basic Profile',
                      style: title,
                    ),
                    Text(
                      'Sample: Heparin + Serum',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(4),
                    ),
                    Text(
                      'Protein, albumin, globulin, urea, creatinine, glucose, GLDH, GGT, BHB, Ca, PO4, Mg, bilirubin, triglyceride.',
                      style: body,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      '2. Extended Profile',
                      style: title,
                    ),
                    Text(
                      'Sample: Heparin + Serum',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(4),
                    ),
                    Text(
                      'Basic Profile + Na, K, Cl',
                      style: body,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      '3. Downer Cow Profile',
                      style: title,
                    ),
                    Text(
                      'Sample: Heparin',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(4),
                    ),
                    Text(
                      'Ca, PO4, Mg, AST, CK, urea.',
                      style: body,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      '4. Liver Profile',
                      style: title,
                    ),
                    Text(
                      'Sample: Heparin + Serum',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(4),
                    ),
                    Text(
                      'Devised for use with horses and cows so includes ALP.',
                      style: body,
                    ),
                    Text(
                      'Protein, albumin, globulin, bile salts, GGT, GLDH, ALP, AST, bilirubin.',
                      style: body,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const <Widget>[
                    Text(
                      'Horses',
                      style: heading,
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // HEADING
                    //
                    Text(
                      '1. Equine Basic',
                      style: title,
                    ),
                    Text(
                      'Sample: Heparin + Serum',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(4),
                    ),
                    Text(
                      'Protein, albumin, globulin, urea, creatinine, glucose, GLDH, GGT, AST, ALP, CK.',
                      style: body,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      '2. Equine Extended',
                      style: title,
                    ),
                    Text(
                      'Sample: Heparin + Serum',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(4),
                    ),
                    Text(
                      'Equine Basic + bilirubin, Ca, PO4, cholesterol, Na, K, Cl.',
                      style: body,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      '3. Extended + SPE',
                      style: title,
                    ),
                    Text(
                      'Sample: Heparin + Serum',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(4),
                    ),
                    Text(
                      'Equine Extended + SPE',
                      style: body,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      '4. Liver Profile',
                      style: title,
                    ),
                    Text(
                      'Sample: Heparin + Serum',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(4),
                    ),
                    Text(
                      'Same as ruminant liver profile.',
                      style: body,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      '5. Muscle Damage',
                      style: title,
                    ),
                    Text(
                      'Sample: Heparin',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(4),
                    ),
                    Text(
                      'CK, AST.',
                      style: body,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      '6. Colic Profile',
                      style: title,
                    ),
                    Text(
                      'Sample: Heparin',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(4),
                    ),
                    Text(
                      'Protein, albumin, globulin, Na, K, Cl, PO4, Ca, Mg.',
                      style: body,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const <Widget>[
                    Text(
                      'Haematology',
                      style: heading,
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // HEADING
                    //
                    Text(
                      'Complete Blood Count',
                      style: title,
                    ),
                    Text(
                      'Sample: EDTA',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(4),
                    ),
                    Text(
                      'Hb, WBC, RBC, Platelets, Diff, MCV, MCH, MCHC, Film comment, Pl protein, fibrinogen.',
                      style: body,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      'Machine Counts Only',
                      style: title,
                    ),
                    Text(
                      'Sample: EDTA',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(4),
                    ),
                    Text(
                      'Complete Blood Count but without film comment, PCV, Pl protein, or fibrinogen.',
                      style: body,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      'PCV, PL Protein',
                      style: title,
                    ),
                    Text(
                      'Sample: EDTA',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      'PCV, PL Protein, Fibrinogen',
                      style: title,
                    ),
                    Text(
                      'Sample: EDTA',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      'Platelets',
                      style: title,
                    ),
                    Text(
                      'Sample: EDTA',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      'Reticulocytes',
                      style: title,
                    ),
                    Text(
                      'Sample: EDTA',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      'RBC Parasites',
                      style: title,
                    ),
                    Text(
                      'Sample: EDTA',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      'Buffy Coat',
                      style: title,
                    ),
                    Text(
                      'Sample: EDTA',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      'Cross Match',
                      style: title,
                    ),
                    Text(
                      'Sample: EDTA + ACD',
                      style: subtitle,
                    ),
                    Text(
                      'Donors + recipient',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      'Coagulation Profile',
                      style: title,
                    ),
                    Text(
                      'Sample: EDTA + Citrate + FDP',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(4),
                    ),
                    Text(
                      'OSPT, KCCT, FDP, platelets.',
                      style: body,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      'OSPT',
                      style: title,
                    ),
                    Text(
                      'Sample: Citrate',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      'KCCT',
                      style: title,
                    ),
                    Text(
                      'Sample: Citrate',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      'FDP',
                      style: title,
                    ),
                    Text(
                      'Sample: Special (see lab)',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      'Urine Analysis',
                      style: heading,
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // HEADING
                    //
                    Text(
                      'Full Routine',
                      style: title,
                    ),
                    Text(
                      'Sample: Urine in Universal',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      'SG and Stick',
                      style: title,
                    ),
                    Text(
                      'Sample: Urine in Universal',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      'Deposit Only',
                      style: title,
                    ),
                    Text(
                      'Sample: Urine in Universal',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      'Urine Protein:Creatinine',
                      style: title,
                    ),
                    Text(
                      'Sample: Urine in Universal',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      'Cytology Added to Routine',
                      style: title,
                    ),
                    Text(
                      'Sample: Urine in Universal',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      'Cytology',
                      style: heading,
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // HEADING
                    //
                    Text(
                      'Basic FNA Smear',
                      style: title,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      'Centrifuged Smear Only',
                      style: title,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      'Effusions',
                      style: title,
                    ),
                    Padding(
                      padding: EdgeInsets.all(4),
                    ),
                    Text(
                      'Cytology + nucleated cell count, red cell count, and protein concentration.',
                      style: body,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      'Synovial Fluid',
                      style: title,
                    ),
                    Padding(
                      padding: EdgeInsets.all(4),
                    ),
                    Text(
                      'Cytology + NCC, RBC, protein, and visual estimate of viscosity.',
                      style: body,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      'CSF',
                      style: title,
                    ),
                    Text(
                      'Sample: Plain + EDTA',
                      style: subtitle,
                    ),
                    Text(
                      'Cytology + NCC, RBC, Microprotein',
                      style: body,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    //
                    // SPACE
                    //
                    Text(
                      'Bone Marrow',
                      style: title,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      'Immunology',
                      style: heading,
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // HEADING
                    //
                    Text(
                      'Coombs Test',
                      style: title,
                    ),
                    Text(
                      'Sample: EDTA',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      'Antiplatelet Antibodies',
                      style: title,
                    ),
                    Text(
                      'Sample: EDTA',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      'Antinuclear Antibodies',
                      style: title,
                    ),
                    Text(
                      'Sample: Serum',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      'Rheumatoid Factor',
                      style: title,
                    ),
                    Text(
                      'Sample: Serum',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      'FeLV / FiV',
                      style: title,
                    ),
                    Text(
                      'Sample: EDTA',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    //
                    // SPACE
                    //
                    Text(
                      'Zinc Sulphate Turbidity',
                      style: title,
                    ),
                    Text(
                      'Sample: Serum',
                      style: subtitle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
