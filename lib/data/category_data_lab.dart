import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../model/category.dart';
import '../model/item.dart';
import '../model/subcategory.dart';

class CategoryDataLab {
  static const Category data = Category(
    name: 'Laboratory Techniques',
    icon: Icon(MdiIcons.testTube),
    subcategories: [
      Subcategory(
        name: 'Laboratory Tests',
        icon: Icon(MdiIcons.beaker),
        items: [
          Item(
            name: 'Routine haematology',
            essential: true,
            reference: 'lab_haematology',
          ),
          Item(
            name: 'Blood biochemistry',
            essential: true,
            reference: 'lab_biochemistry',
          ),
          Item(
            name: 'Urine analysis (refractometer)',
            essential: true,
            reference: 'lab_urine_refractometer',
          ),
          Item(
            name: 'Urine analysis (dipstick)',
            essential: true,
            reference: 'lab_urine_dipstick',
          ),
          Item(
            name: 'Urine analysis (microscope)',
            essential: true,
            reference: 'lab_urine_microscope',
          ),
          Item(
            name: 'Bacterial culture & sensitivity',
            essential: true,
            reference: 'lab_culture_bacteria',
          ),
          Item(
            name: 'Fungal culture',
            essential: true,
            reference: 'lab_culture_fungal',
          ),
          Item(
            name: 'Identification of ectoparasites',
            essential: true,
            reference: 'lab_parasites_ecto',
          ),
          Item(
            name: 'Identification of endoparasites',
            essential: true,
            reference: 'lab_parasites_endo',
          ),
          Item(
            name: 'Faecal examination',
            essential: true,
            reference: 'lab_exam_faecal',
          ),
          Item(
            name: 'Cytology',
            essential: true,
            reference: 'lab_cytology',
          ),
        ],
      ),
      Subcategory(
        name: 'Diagnostic Test Kits',
        icon: Icon(MdiIcons.beakerOutline),
        items: [
          Item(
            name: 'FELV / FIV',
            essential: true,
            reference: 'lab_kit_felv',
          ),
          Item(
            name: 'Milk progesterone',
            essential: true,
            reference: 'lab_kit_progesterone',
          ),
          Item(
            name: 'Others',
            essential: true,
            reference: 'lab_kit_other',
          ),
        ],
      ),
      Subcategory(
        name: 'Post-Mortem Examination',
        icon: Icon(MdiIcons.boxCutter),
        items: [
          Item(
            name: 'Dog',
            essential: true,
            reference: 'lab_pm_dog',
          ),
          Item(
            name: 'Cat',
            essential: true,
            reference: 'lab_pm_cat',
          ),
          Item(
            name: 'Horse',
            essential: true,
            reference: 'lab_pm_horse',
          ),
          Item(
            name: 'Cattle',
            essential: true,
            reference: 'lab_pm_cattle',
          ),
          Item(
            name: 'Sheep',
            essential: true,
            reference: 'lab_pm_sheep',
          ),
          Item(
            name: 'Pig',
            reference: 'lab_pm_pig',
          ),
          Item(
            name: 'Bird',
            reference: 'lab_pm_bird',
          ),
        ],
      ),
    ],
  );
}
