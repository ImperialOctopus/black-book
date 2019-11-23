import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../model/category.dart';
import '../model/item.dart';
import '../model/subcategory.dart';

class CategoryDataCat {
  static const Category data = Category(
    name: 'Cat',
    subcategories: [
      Subcategory(
        name: 'Alimentary System',
        icon: Icon(MdiIcons.stomach),
        items: [
          Item(
            name: 'Rectal examination',
            reference: 'cat_alimentary_rectal',
          ),
          Item(
            name: 'Express anal sacs',
            reference: 'cat_alimentary_anal',
          ),
          Item(
            name: 'Radiography',
            reference: 'cat_alimentary_radio',
          ),
          Item(
            name: 'Ultrasonography',
            reference: 'cat_alimentary_ultra',
          ),
          Item(
            name: 'Endoscopy',
            reference: 'cat_alimentary_endo',
          ),
          Item(
            name: 'Gastrointestinal surgery',
            reference: 'cat_alimentary_surgery',
          ),
        ],
      ),
      Subcategory(
        name: 'General Abdomen',
        icon: Icon(MdiIcons.middleware),
        items: [
          Item(
            name: 'Radiography',
            reference: 'cat_abdomen_radio',
          ),
          Item(
            name: 'Ultrasonography',
            reference: 'cat_abdomen_ultra',
          ),
          Item(
            name: 'Laparotomy & abdominal evaluation',
            reference: 'cat_abdomen_eval',
          ),
        ],
      ),
      Subcategory(
        name: 'Urogenital System',
        icon: Icon(MdiIcons.toilet),
        items: [
          Item(
            name: 'Urinary catheterisation (male)',
            reference: 'cat_urogenital_catheter_male',
          ),
          Item(
            name: 'Urinary catheterisation (female)',
            reference: 'cat_urogenital_catheter_female',
          ),
          Item(
            name: 'Cystocentesis',
            reference: 'cat_urogenital_cystocentesis',
          ),
          Item(
            name: 'Urine sample collection',
            reference: 'cat_urogenital_sample',
          ),
          Item(
            name: 'Castration',
            reference: 'cat_urogenital_castration',
          ),
          Item(
            name: 'Spaying',
            reference: 'cat_urogenital_spay',
          ),
          Item(
            name: 'Radiography',
            reference: 'cat_urogenital_radio',
          ),
          Item(
            name: 'Ultrasonography',
            reference: 'cat_urogenital_ultra',
          ),
          Item(
            name: 'Vaginal examination',
            reference: 'cat_urogenital_vaginal_exam',
          ),
          Item(
            name: 'Vaginal cytology',
            reference: 'cat_urogenital_vaginal_cyto',
          ),
          Item(
            name: 'Fertility examination (male)',
            reference: 'cat_urogenital_fertility_male',
          ),
          Item(
            name: 'Normal mating (observe)',
            reference: 'cat_urogenital_mating',
          ),
          Item(
            name: 'Pregnancy diagnosis (manual)',
            reference: 'cat_urogenital_pregnancy_manual',
          ),
          Item(
            name: 'Pregnancy diagnosis (ultrasound)',
            reference: 'cat_urogenital_pregnancy_ultra',
          ),
          Item(
            name: 'Parturition',
            reference: 'cat_urogenital_parturition',
          ),
          Item(
            name: 'Caesarean section',
            reference: 'cat_urogenital_caesarean',
          ),
        ],
      ),
      Subcategory(
        name: 'Thorax',
        icon: Icon(MdiIcons.lungs),
        items: [
          Item(
            name: 'Radiography',
            reference: 'cat_thorax_radio',
          ),
          Item(
            name: 'ECG',
            reference: 'cat_thorax_ecg',
          ),
          Item(
            name: 'Ultrasonography',
            reference: 'cat_thorax_ultra',
          ),
          Item(
            name: 'Endoscopy & collection of samples',
            reference: 'cat_thorax_endo',
          ),
          Item(
            name: 'Thoracocentesis',
            reference: 'cat_thorax_centesis',
          ),
          Item(
            name: 'Tracheotomy & maintenance of tube',
            reference: 'cat_thorax_tracheo',
          ),
        ],
      ),
      Subcategory(
        name: 'Eyes and Adnexa',
        icon: Icon(MdiIcons.eyeCheck),
        items: [
          Item(
            name: 'Use of penlight',
            reference: 'cat_eyes_penlight',
          ),
          Item(
            name: 'Use of direct ophthalmoscope',
            reference: 'cat_eyes_scope',
          ),
          Item(
            name: 'Use of fluorescein',
            reference: 'cat_eyes_fluorescein',
          ),
          Item(
            name: 'Use of Schirmer Tear Test',
            reference: 'cat_eyes_schirmer',
          ),
          Item(
            name: 'Ultrasonography',
            reference: 'cat_eyes_ultra',
          ),
        ],
      ),
      Subcategory(
        name: 'Nasal Chambers',
        icon: Icon(MdiIcons.steam),
        items: [
          Item(
            name: 'Endoscopy',
            reference: 'cat_nasal_endo',
          ),
          Item(
            name: 'Radiology',
            reference: 'cat_nasal_radio',
          ),
          Item(
            name: 'Biopsy',
            reference: 'cat_nasal_biopsy',
          ),
        ],
      ),
      Subcategory(
        name: 'Locomotor System',
        icon: Icon(MdiIcons.armFlex),
        items: [
          Item(
            name: 'Evaluation of lameness',
            reference: 'cat_locomotor_lameness',
          ),
          Item(
            name: 'Nail clipping',
            reference: 'cat_locomotor_nails',
          ),
          Item(
            name: 'Removal of dew claws',
            reference: 'cat_locomotor_dew',
          ),
          Item(
            name: 'Radiography',
            reference: 'cat_locomotor_radio',
          ),
          Item(
            name: 'Internal/external fixation fracture',
            reference: 'cat_locomotor_fracture',
          ),
          Item(
            name: 'Cast application',
            reference: 'cat_locomotor_cast',
          ),
          Item(
            name: 'Arthrocentesis',
            reference: 'cat_locomotor_centesis',
          ),
        ],
      ),
      Subcategory(
        name: 'Nervous System',
        icon: Icon(MdiIcons.brain),
        items: [
          Item(
            name: 'Complete neurological examination',
            reference: 'cat_nervous_neuro',
          ),
          Item(
            name: 'CSF collection',
            reference: 'cat_nervous_csf',
          ),
          Item(
            name: 'Myelography',
            reference: 'cat_nervous_myelo',
          ),
        ],
      ),
      Subcategory(
        name: 'Teeth & Oral Cavity',
        icon: Icon(MdiIcons.toothbrush),
        items: [
          Item(
            name: 'Examination of the mouth',
            reference: 'cat_oral_exam',
          ),
          Item(
            name: 'Scaling (manual)',
            reference: 'cat_oral_scaling_manual',
          ),
          Item(
            name: 'Scaling (ultrasonic)',
            reference: 'cat_oral_scaling_ultra',
          ),
          Item(
            name: 'Polishing',
            reference: 'cat_oral_polish',
          ),
          Item(
            name: 'Extraction (incisors)',
            reference: 'cat_oral_extract_incisor',
          ),
          Item(
            name: 'Extraction (canines)',
            reference: 'cat_oral_extract_canine',
          ),
          Item(
            name: 'Extraction (molars/carnassials)',
            reference: 'cat_oral_extract_molar',
          ),
          Item(
            name: 'Biopsy oral mass',
            reference: 'cat_oral_biopsy',
          ),
        ],
      ),
      Subcategory(
        name: 'Restraint',
        icon: Icon(MdiIcons.handcuffs),
        items: [
          Item(
            name: 'Sedation & tranquillisation',
            reference: 'cat_restraint_chemical',
          ),
          Item(
            name: 'Manual restraint',
            reference: 'cat_restraint_manual',
          ),
        ],
      ),
      Subcategory(
        name: 'General Anaesthesia',
        icon: Icon(MdiIcons.sleep),
        items: [
          Item(
            name: 'Intravenous',
            reference: 'cat_ga_iv',
          ),
          Item(
            name: 'Inhalational',
            reference: 'cat_ga_inhale',
          ),
          Item(
            name: 'Endotracheal intubation',
            reference: 'cat_ga_intubation',
          ),
          Item(
            name: 'Local anaesthesia',
            reference: 'cat_ga_local',
          ),
          Item(
            name: 'Epidural anaesthesia',
            reference: 'cat_ga_epidural',
          ),
        ],
      ),
      Subcategory(
        name: 'Skin & Ears',
        icon: Icon(MdiIcons.earHearing),
        items: [
          Item(
            name: 'Skin scraping',
            reference: 'cat_ears_scrape',
          ),
          Item(
            name: 'Use of Woods lamp',
            reference: 'cat_ears_woods',
          ),
          Item(
            name: 'Use of otoscope',
            reference: 'cat_ears_otoscope',
          ),
          Item(
            name: 'Sellotape test',
            reference: 'cat_ears_sellotape',
          ),
          Item(
            name: 'Cytology "Diff-Quik"',
            reference: 'cat_ears_cyto',
          ),
          Item(
            name: 'Impression smears',
            reference: 'cat_ears_impression',
          ),
          Item(
            name: 'Coat brushings',
            reference: 'cat_ears_brush',
          ),
          Item(
            name: 'Fine needle aspiration masses',
            reference: 'cat_ears_fna',
          ),
          Item(
            name: 'Punch biopsy',
            reference: 'cat_ears_punch',
          ),
          Item(
            name: 'Bacterial/fungal culture',
            reference: 'cat_ears_culture',
          ),
          Item(
            name: 'Aural haematoma (treatment)',
            reference: 'cat_ears_haematoma',
          ),
          Item(
            name: 'Ventral bulla osteotomy',
            reference: 'cat_ears_osteotomy',
          ),
        ],
      ),
      Subcategory(
        name: 'General',
        icon: Icon(MdiIcons.apps),
        items: [
          Item(
            name: 'Intravenous catheterisation',
            reference: 'cat_general_iv_catheter',
          ),
          Item(
            name: 'Vaccination',
            reference: 'cat_general_vaccination',
          ),
          Item(
            name: 'Parenteral administration of drugs',
            reference: 'cat_general_parenteral',
          ),
          Item(
            name: 'Microchipping',
            reference: 'cat_general_microchip',
          ),
          Item(
            name: 'Euthanasia',
            reference: 'cat_general_euthanasia',
          ),
          Item(
            name: 'Skin suturing',
            reference: 'cat_general_suture',
          ),
          Item(
            name: 'Wound management (surgical)',
            reference: 'cat_general_wound_surgical',
          ),
          Item(
            name: 'Management of traumatic wound',
            reference: 'cat_general_wound_traumatic',
          ),
          Item(
            name: 'Bandaging',
            reference: 'cat_general_bandage',
          ),
          Item(
            name: 'Road traffic accident management',
            reference: 'cat_general_road',
          ),
          Item(
            name: 'Certification (general)',
            reference: 'cat_general_cert_general',
          ),
          Item(
            name: 'Certification (Pet Travel Scheme)',
            reference: 'cat_general_cert_pts',
          ),
        ],
      ),
      Subcategory(
        name: 'Intensive Care',
        icon: Icon(MdiIcons.needle),
        items: [
          Item(
            name: 'IV fluid administration',
            reference: 'cat_ic_ivfluid',
          ),
          Item(
            name: 'Enteral (nasopharyngeal intubation)',
            reference: 'cat_ic_enteral_naso',
          ),
          Item(
            name: 'Enteral (other methods)',
            reference: 'cat_ic_enteral_other',
          ),
          Item(
            name: 'Parenteral nutrition',
            reference: 'cat_ic_parenteral',
          ),
          Item(
            name: 'Resuscitation techniques',
            reference: 'cat_ic_resus',
          ),
          Item(
            name: 'Blood pressure monitoring',
            reference: 'cat_ic_blood_pressure',
          ),
          Item(
            name: 'Blood gas analysis',
            reference: 'cat_ic_blood_gas',
          ),
        ],
      ),
    ],
  );
}
