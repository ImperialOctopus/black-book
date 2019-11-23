import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../model/category.dart';
import '../model/item.dart';
import '../model/subcategory.dart';

class CategoryDataSheep {
  static const Category data = Category(
    name: 'Sheep & Goats',
    subcategories: [
      Subcategory(
        name: 'General Clinical',
        icon: Icon(MdiIcons.hospitalBox),
        items: [
          Item(
            name: 'History taking',
            reference: 'sheep_clinical_history',
          ),
          Item(
            name: 'General observation (flock)',
            reference: 'sheep_clinical_observe_flock',
          ),
          Item(
            name: 'General observation (individual)',
            reference: 'sheep_clinical_observe_single',
          ),
          Item(
            name: 'Temperature, pulse, respiration',
            reference: 'sheep_clinical_tpr',
          ),
          Item(
            name: 'Examination (mouth)',
            reference: 'sheep_clinical_exam_mouth',
          ),
          Item(
            name: 'Examination (thorax)',
            reference: 'sheep_clinical_exam_thorax',
          ),
          Item(
            name: 'Examination (abdomen)',
            reference: 'sheep_clinical_exam_abdomen',
          ),
          Item(
            name: 'Examination (locomotor system)',
            reference: 'sheep_clinical_exam_locomotor',
          ),
          Item(
            name: 'Examination (lymph nodes)',
            reference: 'sheep_clinical_exam_lymph',
          ),
          Item(
            name: 'Examination (udder)',
            reference: 'sheep_clinical_exam_udder',
          ),
        ],
      ),
      Subcategory(
        name: 'Alimentary System',
        icon: Icon(MdiIcons.stomach),
        items: [
          Item(
            name: 'Examination of incisors/molars',
            reference: 'sheep_alimentary_exam',
          ),
          Item(
            name: 'Stomach intubation (lamb)',
            reference: 'sheep_alimentary_intubation',
          ),
          Item(
            name: 'Anthelminthics by dosing gun',
            reference: 'sheep_alimentary_anthelmintic',
          ),
          Item(
            name: 'Rehydration (oral)',
            reference: 'sheep_alimentary_rehydration_oral',
          ),
          Item(
            name: 'Rehydration (parenteral)',
            reference: 'sheep_alimentary_rehydration_parenteral',
          ),
          Item(
            name: 'Administration of rumen boluses',
            reference: 'sheep_alimentary_bolus',
          ),
        ],
      ),
      Subcategory(
        name: 'Urogenital System (Ram)',
        icon: Icon(MdiIcons.genderMale),
        items: [
          Item(
            name: 'Fertility examination',
            reference: 'sheep_urogenital_male_exam',
          ),
          Item(
            name: 'Castration (surgical)',
            reference: 'sheep_urogenital_male_castration_surgical',
          ),
          Item(
            name: 'Castration (rubber ring)',
            reference: 'sheep_urogenital_male_castration_ring',
          ),
          Item(
            name: 'Castration (Burdizzo)',
            reference: 'sheep_urogenital_male_castration_burdizzo',
          ),
          Item(
            name: 'Vasectomy',
            reference: 'sheep_urogenital_male_vasectomy',
          ),
          Item(
            name: 'Urolithiasis management',
            reference: 'sheep_urogenital_male_urolithiasis',
          ),
          Item(
            name: 'Semen collection & evaluation',
            reference: 'sheep_urogenital_male_semen',
          ),
        ],
      ),
      Subcategory(
        name: 'Urogenital System (Ewe)',
        icon: Icon(MdiIcons.genderFemale),
        items: [
          Item(
            name: 'Flock infertility investigation',
            reference: 'sheep_urogenital_female_infertility',
          ),
          Item(
            name: 'Insertion of vaginal sponges',
            reference: 'sheep_urogenital_female_sponge',
          ),
          Item(
            name: 'Vaginal prolapse',
            reference: 'sheep_urogenital_female_prolapse_vaginal',
          ),
          Item(
            name: 'Cervical prolapse',
            reference: 'sheep_urogenital_female_prolapse_cervical',
          ),
          Item(
            name: 'Abortion investigation',
            reference: 'sheep_urogenital_female_abortion',
          ),
          Item(
            name: 'Dystocia',
            reference: 'sheep_urogenital_female_dystocia',
          ),
          Item(
            name: 'Caesarean',
            reference: 'sheep_urogenital_female_caesarean',
          ),
          Item(
            name: 'Artificial insemination',
            reference: 'sheep_urogenital_female_ai',
          ),
          Item(
            name: 'Pregnancy diagnosis (manual)',
            reference: 'sheep_urogenital_female_pregnancy_manual',
          ),
          Item(
            name: 'Pregnancy diagnosis (ultrasound)',
            reference: 'sheep_urogenital_female_pregnancy_ultra',
          ),
          Item(
            name: 'Uterine prolapse',
            reference: 'sheep_urogenital_female_prolapse_uterine',
          ),
        ],
      ),
      Subcategory(
        name: 'Metabolic Disease',
        icon: Icon(MdiIcons.flash),
        items: [
          Item(
            name: 'Examination for metabolic disease',
            reference: 'sheep_metabolic_exam',
          ),
          Item(
            name: 'Interpretation of test results',
            reference: 'sheep_metabolic_results',
          ),
        ],
      ),
      Subcategory(
        name: 'Flock Health Examination',
        icon: Icon(MdiIcons.magnify),
        items: [
          Item(
            name: 'Visit',
            reference: 'sheep_flock_visit',
          ),
          Item(
            name: 'Collection of samples',
            reference: 'sheep_flock_sample',
          ),
          Item(
            name: 'Interpretation & oral advice',
            reference: 'sheep_flock_advice',
          ),
          Item(
            name: 'Report writing',
            reference: 'sheep_flock_report',
          ),
        ],
      ),
      Subcategory(
        name: 'Nervous System',
        icon: Icon(MdiIcons.brain),
        items: [
          Item(
            name: 'Examination of nervous system',
            reference: 'sheep_nervous_exam',
          ),
          Item(
            name: 'Removal of gid cysts',
            reference: 'sheep_nervous_cyst',
          ),
        ],
      ),
      Subcategory(
        name: 'Locomotor System',
        icon: Icon(MdiIcons.armFlexOutline),
        items: [
          Item(
            name: 'Evaluation of lameness',
            reference: 'sheep_locomotor_eval',
          ),
          Item(
            name: 'Examination of foot & limb',
            reference: 'sheep_locomotor_exam',
          ),
          Item(
            name: 'Foot trimming',
            reference: 'sheep_locomotor_trim',
          ),
          Item(
            name: 'Amputation of digit',
            reference: 'sheep_locomotor_amputation',
          ),
        ],
      ),
      Subcategory(
        name: 'Dermatology',
        icon: Icon(MdiIcons.paperRoll),
        items: [
          Item(
            name: 'Collection & examination (wool sample)',
            reference: '',
          ),
          Item(
            name: 'Collection & examination (skin scraping)',
            reference: '',
          ),
          Item(
            name: 'Orf (scarification for vaccination)',
            reference: '',
          ),
        ],
      ),
      Subcategory(
        name: 'General',
        icon: Icon(MdiIcons.apps),
        items: [
          Item(
            name: 'Condition scoring',
            reference: 'sheep_general_condition',
          ),
          Item(
            name: 'Vaccination',
            reference: 'sheep_general_vaccination',
          ),
          Item(
            name: 'Disbudding (goat)',
            reference: 'sheep_general_disbudding',
          ),
          Item(
            name: 'Blood sampling',
            reference: 'sheep_general_blood',
          ),
          Item(
            name: 'Parenteral administration of drugs',
            reference: 'sheep_general_drugs_parenteral',
          ),
          Item(
            name: 'Euthanasia',
            reference: 'sheep_general_euthanasia',
          ),
          Item(
            name: 'Wound management',
            reference: 'sheep_general_wound',
          ),
        ],
      ),
    ],
  );
}
