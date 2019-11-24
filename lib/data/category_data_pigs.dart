import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../model/category.dart';
import '../model/item.dart';
import '../model/subcategory.dart';

class CategoryDataPigs {
  static const Category data = Category(
    name: 'Pigs',
    icon: Icon(MdiIcons.pig),
    subcategories: [
      Subcategory(
        name: 'General Clinical',
        icon: Icon(MdiIcons.hospitalBox),
        items: [
          Item(
            name: 'History taking',
            reference: 'pigs_clinical_history',
          ),
          Item(
            name: 'General observations (herd)',
            reference: 'pigs_clinical_observe_herd',
          ),
          Item(
            name: 'General observations (individual)',
            reference: 'pigs_clinical_observe_single',
          ),
          Item(
            name: 'Temperature / heart rate / respiration',
            reference: 'pigs_clinical_tpr',
          ),
          Item(
            name: 'Examination (mouth)',
            reference: 'pigs_clinical_exam_mouth',
          ),
          Item(
            name: 'Examination (thorax)',
            reference: 'pigs_clinical_exam_thorax',
          ),
          Item(
            name: 'Examination (abdomen)',
            reference: 'pigs_clinical_exam_abdomen',
          ),
          Item(
            name: 'Examination (locomotor system)',
            reference: 'pigs_clinical_exam_locomotor',
          ),
          Item(
            name: 'Condition scoring',
            reference: 'pigs_clinical_condition',
          ),
          Item(
            name: 'Assess size & evenness (piglets)',
            reference: 'pigs_clinical_size_piglets',
          ),
          Item(
            name: 'Assess size & evenness (growers)',
            reference: 'pigs_clinical_size_grower',
          ),
          Item(
            name: 'Assess size & evenness (finishers)',
            reference: 'pigs_clinical_size_finisher',
          ),
        ],
      ),
      Subcategory(
        name: 'Handling & Restraint',
        icon: Icon(MdiIcons.handcuffs),
        items: [
          Item(
            name: 'Piglets',
            reference: 'pigs_restraint_piglet',
          ),
          Item(
            name: 'Growers',
            reference: 'pigs_restraint_grower',
          ),
          Item(
            name: 'Finishers',
            reference: 'pigs_restraint_finisher',
          ),
          Item(
            name: 'Sow',
            reference: 'pigs_restraint_sow',
          ),
          Item(
            name: 'Boar',
            reference: 'pigs_restraint_boar',
          ),
        ],
      ),
      Subcategory(
        name: 'Fertility',
        icon: Icon(MdiIcons.reproduction),
        items: [
          Item(
            name: 'Pregnancy diagnosis (ultrasound)',
            reference: 'pigs_fertility_pregnancy_ultrasound',
          ),
          Item(
            name: 'Artificial insemination',
            reference: 'pigs_fertility_ai',
          ),
          Item(
            name: 'Dystocia',
            reference: 'pigs_fertility_dystocia',
          ),
          Item(
            name: 'Uterine prolapse',
            reference: 'pigs_fertility_prolapse_uterine',
          ),
          Item(
            name: 'Herd fertility investigation',
            reference: 'pigs_fertility_herd',
          ),
          Item(
            name: 'Castration',
            reference: 'pigs_fertility_castration',
          ),
        ],
      ),
      Subcategory(
        name: 'Herd Health Visit',
        icon: Icon(MdiIcons.medicalBag),
        items: [
          Item(
            name: 'Observe herd inspection',
            reference: 'pigs_herd_observe',
          ),
          Item(
            name: 'Inspect herd records',
            reference: 'pigs_herd_records',
          ),
          Item(
            name: 'Sarcoptic mange control methods',
            reference: 'pigs_herd_mange',
          ),
          Item(
            name: 'Assessment of unit',
            reference: 'pigs_herd_assessment',
          ),
        ],
      ),
      Subcategory(
        name: 'Investigation of Disease Outbreak',
        icon: Icon(MdiIcons.magnify),
        items: [
          Item(
            name: 'Attend visit',
            reference: 'pigs_outbreak_visit',
          ),
          Item(
            name: 'Collection of samples',
            reference: 'pigs_outbreak_sample',
          ),
          Item(
            name: 'Interpretation of results',
            reference: 'pigs_outbreak_results',
          ),
          Item(
            name: 'Differential diagnosis',
            reference: 'pigs_outbreak_diagnosis',
          ),
          Item(
            name: 'Control & treatment (immediate)',
            reference: 'pigs_outbreak_control_immediate',
          ),
          Item(
            name: 'Control & treatment (final)',
            reference: 'pigs_outbreak_control_final',
          ),
          Item(
            name: 'Report writing',
            reference: 'pigs_outbreak_report',
          ),
        ],
      ),
      Subcategory(
        name: 'General',
        icon: Icon(MdiIcons.apps),
        items: [
          Item(
            name: 'Administration of drugs (in feed)',
            reference: 'pigs_general_drugs_feed',
          ),
          Item(
            name: 'Administration of drugs (in water)',
            reference: 'pigs_general_drugs_water',
          ),
          Item(
            name: 'Vaccination',
            reference: 'pigs_general_vaccination',
          ),
          Item(
            name: 'Casualty certification',
            reference: 'pigs_general_certify_casualty',
          ),
          Item(
            name: 'Euthanasia / on farm slaughter',
            reference: 'pigs_general_euthanasia',
          ),
          Item(
            name: 'Appreciation of relevant drug legislation',
            reference: 'pigs_general_legislation',
          ),
        ],
      ),
    ],
  );
}
