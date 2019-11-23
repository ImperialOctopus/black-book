import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../model/category.dart';
import '../model/item.dart';
import '../model/subcategory.dart';

class CategoryDataExotic {
  static const Category data = Category(
    name: 'Small Pets & Exotics',
    subcategories: [
      Subcategory(
        name: 'Rabbits',
        icon: Icon(MdiIcons.rabbit),
        items: [
          Item(
            name: 'General examination',
            reference: 'exotic_rabbit_exam',
          ),
          Item(
            name: 'Vaccination',
            reference: 'exotic_rabbit_vaccination',
          ),
          Item(
            name: 'General anaesthesia',
            reference: 'exotic_rabbit_ga',
          ),
          Item(
            name: 'Neutering (male)',
            reference: 'exotic_rabbit_neuter_male',
          ),
          Item(
            name: 'Neutering (female)',
            reference: 'exotic_rabbit_neuter_female',
          ),
          Item(
            name: 'Dentistry (incisors)',
            reference: 'exotic_rabbit_dentistry_incisor',
          ),
          Item(
            name: 'Dentistry (molars)',
            reference: 'exotic_rabbit_dentistry_molar',
          ),
          Item(
            name: 'Dacrocystitis',
            reference: 'exotic_rabbit_dacrocystitis',
          ),
          Item(
            name: 'Diagnosis & treatment of cheyletiella',
            reference: 'exotic_rabbit_cheyletiella',
          ),
          Item(
            name: 'Drug administration',
            reference: 'exotic_rabbit_drugs',
          ),
        ],
      ),
      Subcategory(
        name: 'Guinea Pig',
        icon: Icon(MdiIcons.pigVariant),
        items: [
          Item(
            name: 'General examination',
            reference: 'exotic_guinea_exam',
          ),
          Item(
            name: 'Diagnosis & treatment of mange',
            reference: 'exotic_guinea_mange',
          ),
          Item(
            name: 'General anaesthesia',
            reference: 'exotic_guinea_ga',
          ),
          Item(
            name: 'Dentistry',
            reference: 'exotic_guinea_dentistry',
          ),
          Item(
            name: 'Drug administration',
            reference: 'exotic_guinea_drug',
          ),
        ],
      ),
      Subcategory(
        name: 'Rodents',
        icon: Icon(MdiIcons.cursorDefaultOutline),
        items: [
          Item(
            name: 'General examination (rats)',
            reference: 'exotic_rodent_exam_rat',
          ),
          Item(
            name: 'General examination (mice)',
            reference: 'exotic_rodent_exam_mouse',
          ),
          Item(
            name: 'General examination (hamsters)',
            reference: 'exotic_rodent_exam_hamster',
          ),
          Item(
            name: 'General anaesthesia',
            reference: 'exotic_rodent_ga',
          ),
          Item(
            name: 'Treatment of common conditions',
            reference: 'exotic_rodent_common',
          ),
        ],
      ),
      Subcategory(
        name: 'Birds',
        icon: Icon(MdiIcons.feather),
        items: [
          Item(
            name: 'General examination',
            reference: 'exotic_bird_exam',
          ),
          Item(
            name: 'Clip claws / beaks',
            reference: 'exotic_bird_clip',
          ),
          Item(
            name: 'Stomach tubing',
            reference: 'exotic_bird_intubate',
          ),
          Item(
            name: 'General anaesthesia',
            reference: 'exotic_bird_ga',
          ),
          Item(
            name: 'Treatment of common conditions',
            reference: 'exotic_bird_common',
          ),
        ],
      ),
      Subcategory(
        name: 'Reptiles',
        icon: Icon(MdiIcons.egg),
        items: [
          Item(
            name: 'General examination',
            reference: 'exotic_reptile_exam',
          ),
          Item(
            name: 'Stomach tubing',
            reference: 'exotic_reptile_intubate',
          ),
          Item(
            name: 'Drug administration',
            reference: 'exotic_reptile_drug',
          ),
          Item(
            name: 'General anaesthesia',
            reference: 'exotic_reptile_ga',
          ),
        ],
      ),
    ],
  );
}
