import 'package:black_book/model/category.dart';
import 'package:black_book/model/item.dart';
import 'package:black_book/model/subcategory.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CategoryData {
  static const List<Category> categoryList = [
    Category(
      name: 'Dog',
      subcategories: [
        Subcategory(
          name: 'Alimentary System',
          icon: Icon(MdiIcons.stomach),
          items: [
            Item(
              name: 'Rectal examination (essential!)',
              reference: 'dog_alimentary_rectal',
            ),
            Item(
              name: 'Express anal sacs (essential!)',
              reference: 'dog_alimentary_anal',
            ),
            Item(
              name: 'Radiography',
              reference: 'dog_alimentary_radio',
            ),
            Item(
              name: 'Ultrasonography',
              reference: 'dog_alimentary_ultra',
            ),
            Item(
              name: 'Endoscopy',
              reference: 'dog_alimentary_endo',
            ),
            Item(
              name: 'Gastrointestinal surgery',
              reference: 'dog_alimentary_surgery',
            ),
          ],
        ),
        Subcategory(
          name: 'General Abdomen',
          icon: Icon(MdiIcons.middleware),
          items: [
            Item(
              name: 'Radiography',
              reference: 'dog_abdomen_radio',
            ),
            Item(
              name: 'Ultrasonography',
              reference: 'dog_abdomen_ultra',
            ),
            Item(
              name: 'Laparotomy & abdominal evaluation',
              reference: 'dog_abdomen_eval',
            ),
          ],
        ),
        Subcategory(
          name: 'Urogenital',
          icon: Icon(MdiIcons.toilet),
          items: [
            Item(
              name: 'Urinary catheterisation (male)',
              reference: 'dog_urogenital_catheter_male',
            ),
            Item(
              name: 'Urinary catheterisation (female)',
              reference: 'dog_urogenital_catheter_female',
            ),
            Item(
              name: 'Cystocentesis',
              reference: 'dog_urogenital_cystocentesis',
            ),
            Item(
              name: 'Urine sample collection',
              reference: 'dog_urogenital_sample',
            ),
            Item(
              name: 'Castration',
              reference: 'dog_urogenital_castration',
            ),
            Item(
              name: 'Spaying',
              reference: 'dog_urogenital_spay',
            ),
            Item(
              name: 'Radiography',
              reference: 'dog_urogenital_radio',
            ),
            Item(
              name: 'Ultrasonography',
              reference: 'dog_urogenital_ultra',
            ),
            Item(
              name: 'Vaginal examination',
              reference: 'dog_urogenital_vaginal_exam',
            ),
            Item(
              name: 'Vaginal cytology',
              reference: 'dog_urogenital_vaginal_cyto',
            ),
            Item(
              name: 'Fertility examination (male)',
              reference: 'dog_urogenital_fertility_male',
            ),
            Item(
              name: 'Normal mating (observe)',
              reference: 'dog_urogenital_mating',
            ),
            Item(
              name: 'Pregnancy diagnosis (manual)',
              reference: 'dog_urogenital_pregnancy_manual',
            ),
            Item(
              name: 'Pregnancy diagnosis (ultrasound)',
              reference: 'dog_urogenital_pregnancy_ultra',
            ),
            Item(
              name: 'Parturition',
              reference: 'dog_urogenital_parturition',
            ),
            Item(
              name: 'Caesarean section',
              reference: 'dog_urogenital_caesarean',
            ),
          ],
        ),
      ],
    ),
    Category(
      name: 'Horses',
      subcategories: [
        Subcategory(
          icon: Icon(MdiIcons.brain),
          name: 'Nervous System',
          items: [
            Item(
              name: 'Gait evaluation',
              reference: 'horse_gait',
            ),
            Item(
              name: 'Cranial nerve evaluation',
              reference: 'horse_cranial_nerves',
            ),
            Item(
              name: '"Slap test"',
              reference: 'horse_slap',
            ),
          ],
        ),
      ],
    ),
    Category(
      name: 'Category of Bread',
      subcategories: [
        Subcategory(
          icon: Icon(MdiIcons.breadSliceOutline),
          name: 'Test Category: Do Not Be Alarmed',
          items: [
            Item(
              name: 'The Loaf of Brian',
              reference: 'bread_one',
            ),
            Item(
              name: 'Scone with the Wind',
              reference: 'bread_two',
            ),
            Item(
              name: 'Third Bread Movie Pun',
              reference: 'bread_third',
            ),
          ],
        ),
      ],
    ),
  ];
}
