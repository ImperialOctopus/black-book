import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../model/category.dart';
import '../model/item.dart';
import '../model/subcategory.dart';

class CategoryDataHorse {
  static const Category data = Category(
    name: 'Horse',
    icon: Icon(MdiIcons.donkey),
    subcategories: [
      Subcategory(
        name: 'Alimentary System',
        icon: Icon(MdiIcons.stomach),
        items: [
          Item(
            name: 'Oral examination & use of gag',
            reference: 'horse_alimentary_oral_exam',
          ),
          Item(
            name: 'Teeth (age)',
            reference: 'horse_alimentary_teeth_age',
          ),
          Item(
            name: 'Teeth (rasp)',
            reference: 'horse_alimentary_teeth_rasp',
          ),
          Item(
            name: 'Oral administration of paste',
            reference: 'horse_alimentary_paste',
          ),
          Item(
            name: 'Examination of colic (medical)',
            reference: 'horse_alimentary_colic_medical',
          ),
          Item(
            name: 'Nasogastric intubation',
            reference: 'horse_alimentary_intubation',
          ),
          Item(
            name: 'Examination of colic (surgical)',
            reference: 'horse_alimentary_colic_surgical',
          ),
          Item(
            name: 'Abdominal paracentesis',
            reference: 'horse_alimentary_centesis',
          ),
        ],
      ),
      Subcategory(
        name: 'Upper Respiratory Tract',
        icon: Icon(MdiIcons.balloon),
        items: [
          Item(
            name: 'External examination/palpation',
            reference: 'horse_respiratory_external',
          ),
          Item(
            name: 'Exercise testing for respiration noise',
            reference: 'horse_respiratory_noise',
          ),
          Item(
            name: 'Endoscopy',
            reference: 'horse_respiratory_endo',
          ),
          Item(
            name: 'Sinus trephination',
            reference: 'horse_respiratory_treph',
          ),
        ],
      ),
      Subcategory(
        name: 'Urogenital System',
        icon: Icon(MdiIcons.toilet),
        items: [
          Item(
            name: 'Vaginal examination',
            reference: 'horse_urogenital_exam_vaginal',
          ),
          Item(
            name: 'Uterine & cervical swab',
            reference: 'horse_urogenital_swab_uterine',
          ),
          Item(
            name: 'Clitoral swab',
            reference: 'horse_urogenital_swab_clitoral',
          ),
          Item(
            name: 'Urethral catheterisation (male)',
            reference: 'horse_urogenital_catheter_male',
          ),
          Item(
            name: 'Urethral catheterisation (female)',
            reference: 'horse_urogenital_catheter_female',
          ),
          Item(
            name: 'Urine sample collection',
            reference: 'horse_urogenital_urine',
          ),
          Item(
            name: 'Uterine biopsy',
            reference: 'horse_urogenital_biopsy_uterine',
          ),
          Item(
            name: 'Uterine irrigation',
            reference: 'horse_urogenital_irrigation',
          ),
          Item(
            name: 'Pregnancy diagnosis (manual)',
            reference: 'horse_urogenital_pregnancy_manual',
          ),
          Item(
            name: 'Pregnancy diagnosis (ultrasound)',
            reference: 'horse_urogenital_pregnancy_ultra',
          ),
          Item(
            name: 'Rectal examination (cervix, uterus, ovaries)',
            reference: 'horse_urogenital_exam_rectal',
          ),
          Item(
            name: 'Ultrasound examination (cervix, uterus, ovaries)',
            reference: 'horse_urogenital_exam_ultra',
          ),
          Item(
            name: 'Parturition',
            reference: 'horse_urogenital_parturition',
          ),
          Item(
            name: 'Examination of placenta',
            reference: 'horse_urogenital_exam_placenta',
          ),
          Item(
            name: 'Castration (normal)',
            reference: 'horse_urogenital_castrate_normal',
          ),
          Item(
            name: 'Castration (rig)',
            reference: 'horse_urogenital_castrate_rig',
          ),
          Item(
            name: 'Collection of semen',
            reference: 'horse_urogenital_semen',
          ),
        ],
      ),
      Subcategory(
        name: 'Locomotor System',
        icon: Icon(MdiIcons.armFlex),
        items: [
          Item(
            name: 'Evaluation of lameness',
            reference: 'horse_locomotor_lame',
          ),
          Item(
            name: 'Examination of limb & foot',
            reference: 'horse_locomotor_exam_foot',
          ),
          Item(
            name: 'Removal of shoe',
            reference: 'horse_locomotor_shoe_remove',
          ),
          Item(
            name: 'Paring of foot & use of hoof testers',
            reference: 'horse_locomotor_paring',
          ),
          Item(
            name: 'Evaluation of gait',
            reference: 'horse_locomotor_gait',
          ),
          Item(
            name: 'Flexion tests',
            reference: 'horse_locomotor_flexion',
          ),
          Item(
            name: 'Regional/intra-articular analgesia',
            reference: 'horse_locomotor_analgesia',
          ),
          Item(
            name: 'Arthrocentesis',
            reference: 'horse_locomotor_centesis',
          ),
          Item(
            name: 'Radiography foot & lower limb',
            reference: 'horse_locomotor_radio',
          ),
          Item(
            name: 'Bandaging of limbs',
            reference: 'horse_locomotor_bandage',
          ),
          Item(
            name: 'Distal limb ultrasonography',
            reference: 'horse_locomotor_ultra',
          ),
        ],
      ),
      Subcategory(
        name: 'Thorax',
        icon: Icon(MdiIcons.lungs),
        items: [
          Item(
            name: 'Cardiac auscultation',
            reference: 'horse_thorax_ausc_cardiac',
          ),
          Item(
            name: 'Lung auscultation',
            reference: 'horse_thorax_ausc_lung',
          ),
          Item(
            name: 'ECG',
            reference: 'horse_thorax_ecg',
          ),
          Item(
            name: 'Ultrasonography',
            reference: 'horse_thorax_ultra',
          ),
          Item(
            name: 'Tracheal lavage for sample',
            reference: 'horse_thorax_lavage_tracheal',
          ),
          Item(
            name: 'Bronchoalveolar lavage for sample',
            reference: 'horse_thorax_lavage_broncho',
          ),
        ],
      ),
      Subcategory(
        name: 'Nervous System',
        icon: Icon(MdiIcons.brain),
        items: [
          Item(
            name: 'Gait evaluation',
            reference: 'horse_nervous_gait',
          ),
          Item(
            name: 'Cranial nerve evaluation',
            reference: 'horse_nervous_cranial_nerve',
          ),
          Item(
            name: '"Slap test"',
            reference: 'horse_nervous_slap',
          ),
        ],
      ),
      Subcategory(
        name: 'Dermatology',
        icon: Icon(MdiIcons.script),
        items: [
          Item(
            name: 'Collection of hair pluck',
            reference: 'horse_skin_hair',
          ),
          Item(
            name: 'Collection of skin scraping',
            reference: 'horse_skin_scrape',
          ),
          Item(
            name: 'Punch biopsy',
            reference: 'horse_skin_punch',
          ),
        ],
      ),
      Subcategory(
        name: 'Eyes and Adnexa',
        icon: Icon(MdiIcons.eye),
        items: [
          Item(
            name: 'Use of pen torch',
            reference: 'horse_eyes_torch',
          ),
          Item(
            name: 'Use of opthalmoscope',
            reference: 'horse_eyes_scope',
          ),
          Item(
            name: 'Catheterisation nasolacrimal duct',
            reference: 'horse_eyes_catheter',
          ),
        ],
      ),
      Subcategory(
        name: 'Restraint',
        icon: Icon(MdiIcons.handcuffs),
        items: [
          Item(
            name: 'Sedation & tranquillisation',
            reference: 'horse_restraint_chemical',
          ),
          Item(
            name: 'Use of a twitch',
            reference: 'horse_restraint_twitch',
          ),
          Item(
            name: 'Other methods of restraint',
            reference: 'horse_restraint_other',
          ),
        ],
      ),
      Subcategory(
        name: 'General Anaesthesia',
        icon: Icon(MdiIcons.sleep),
        items: [
          Item(
            name: 'Total IV anaesthesia',
            reference: 'horse_ga_iv',
          ),
          Item(
            name: 'Intubation of trachea',
            reference: 'horse_ga_intubation',
          ),
          Item(
            name: 'Inhalation anaesthesia',
            reference: 'horse_ga_inhalation',
          ),
        ],
      ),
      Subcategory(
        name: 'General',
        icon: Icon(MdiIcons.apps),
        items: [
          Item(
            name: 'Vaccination',
            reference: 'horse_general_vaccination',
          ),
          Item(
            name: 'Parenteral administration of drugs',
            reference: 'horse_general_drugs_parenteral',
          ),
          Item(
            name: 'Observe examination for purchase',
            reference: 'horse_general_exam_purchase',
          ),
          Item(
            name: 'Euthanasia',
            reference: 'horse_general_euthanasia',
          ),
          Item(
            name: 'Wound management & suturing',
            reference: 'horse_general_wound_suture',
          ),
          Item(
            name: 'Management of infected wound',
            reference: 'horse_general_wound_infected',
          ),
          Item(
            name: 'ID (certification & export)',
            reference: 'horse_general_certification',
          ),
          Item(
            name: 'Examination for insurance',
            reference: 'horse_general_insurance',
          ),
          Item(
            name: 'Inspection of riding establishments',
            reference: 'horse_general_inspect_riding',
          ),
          Item(
            name: 'Microchipping',
            reference: 'horse_general_microchip',
          ),
        ],
      ),
      Subcategory(
        name: 'Intensive Care',
        icon: Icon(MdiIcons.needle),
        items: [
          Item(
            name: 'Intravenous catheterisation',
            reference: 'horse_ic_iv_catheter',
          ),
          Item(
            name: 'IV fluid administration',
            reference: 'horse_ic_iv_fluid',
          ),
        ],
      ),
    ],
  );
}
