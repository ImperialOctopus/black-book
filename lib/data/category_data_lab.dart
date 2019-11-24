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
        name: '',
        icon: null,
        items: [
          Item(
            name: 'Routine haematology',
            reference: 'lab_haematology',
          ),
          Item(
            name: 'Blood biochemistry',
            reference: 'lab_biochemistry',
          ),
          Item(
            name: 'Urine analysis (refractometer)',
            reference: 'lab_urine_refractometer',
          ),
          Item(
            name: 'Urine analysis (dipstick)',
            reference: 'lab_urine_dipstick',
          ),
          Item(
            name: 'Urine analysis (microscope)',
            reference: 'lab_urine_microscope',
          ),
          Item(
            name: 'Bacterial culture & sensitivity',
            reference: 'lab_culture_bacteria',
          ),
          Item(
            name: 'Fungal culture',
            reference: 'lab_culture_fungal',
          ),
          Item(
            name: 'Identification of ectoparasites',
            reference: 'lab_parasites_ecto',
          ),
          Item(
            name: 'Identification of endoparasites',
            reference: 'lab_parasites_endo',
          ),
          Item(
            name: 'Faecal examination',
            reference: 'lab_exam_faecal',
          ),
          Item(
            name: 'Cytology',
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
            reference: 'lab_kit_felv',
          ),
          Item(
            name: 'Milk progesterone',
            reference: 'lab_kit_progesterone',
          ),
          Item(
            name: 'Others',
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
            reference: 'lab_pm_dog',
          ),
          Item(
            name: 'Cat',
            reference: 'lab_pm_cat',
          ),
          Item(
            name: 'Horse',
            reference: 'lab_pm_horse',
          ),
          Item(
            name: 'Cattle',
            reference: 'lab_pm_cattle',
          ),
          Item(
            name: 'Sheep',
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
