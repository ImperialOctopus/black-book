import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../model/category.dart';
import '../model/item.dart';
import '../model/subcategory.dart';

class CategoryDataDog {
  static const Category data = Category(
    name: 'Dog',
    icon: Icon(MdiIcons.dog),
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
        icon: Icon(MdiIcons.sausage),
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
        name: 'Urogenital System',
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
      Subcategory(
        name: 'Thorax',
        icon: Icon(MdiIcons.lungs),
        items: [
          Item(
            name: 'Radiography',
            reference: 'dog_thorax_radio',
          ),
          Item(
            name: 'ECG',
            reference: 'dog_thorax_ecg',
          ),
          Item(
            name: 'Ultrasonography',
            reference: 'dog_thorax_ultra',
          ),
          Item(
            name: 'Endoscopy & collection of samples',
            reference: 'dog_thorax_endo',
          ),
          Item(
            name: 'Thoracocentesis',
            reference: 'dog_thorax_centesis',
          ),
          Item(
            name: 'Tracheotomy & maintenance of tube',
            reference: 'dog_thorax_tracheo',
          ),
        ],
      ),
      Subcategory(
        name: 'Eyes and Adnexa',
        icon: Icon(MdiIcons.eye),
        items: [
          Item(
            name: 'Use of penlight',
            reference: 'dog_eyes_penlight',
          ),
          Item(
            name: 'Use of direct ophthalmoscope',
            reference: 'dog_eyes_scope',
          ),
          Item(
            name: 'Use of fluorescein',
            reference: 'dog_eyes_fluorescein',
          ),
          Item(
            name: 'Use of Schirmer Tear Test',
            reference: 'dog_eyes_schirmer',
          ),
          Item(
            name: 'Ultrasonography',
            reference: 'dog_eyes_ultra',
          ),
        ],
      ),
      Subcategory(
        name: 'Nasal Chambers',
        icon: Icon(MdiIcons.cloud),
        items: [
          Item(
            name: 'Endoscopy',
            reference: 'dog_nasal_endo',
          ),
          Item(
            name: 'Radiology',
            reference: 'dog_nasal_radio',
          ),
          Item(
            name: 'Biopsy',
            reference: 'dog_nasal_biopsy',
          ),
        ],
      ),
      Subcategory(
        name: 'Locomotor System',
        icon: Icon(MdiIcons.armFlex),
        items: [
          Item(
            name: 'Evaluation of lameness',
            reference: 'dog_locomotor_lameness',
          ),
          Item(
            name: 'Nail clipping',
            reference: 'dog_locomotor_nails',
          ),
          Item(
            name: 'Removal of dew claws',
            reference: 'dog_locomotor_dew',
          ),
          Item(
            name: 'Radiography',
            reference: 'dog_locomotor_radio',
          ),
          Item(
            name: 'Radiography for BVA/KC HD scheme',
            reference: 'dog_locomotor_radio_bva',
          ),
          Item(
            name: 'Internal/external fixation fracture',
            reference: 'dog_locomotor_fracture',
          ),
          Item(
            name: 'Cast application',
            reference: 'dog_locomotor_cast',
          ),
          Item(
            name: 'Arthrocentesis',
            reference: 'dog_locomotor_centesis',
          ),
          Item(
            name: 'Cranial draw & tibial thrust',
            reference: 'dog_locomotor_draw',
          ),
          Item(
            name: 'Ortolani test',
            reference: 'dog_locomotor_ortolani',
          ),
        ],
      ),
      Subcategory(
        name: 'Nervous System',
        icon: Icon(MdiIcons.brain),
        items: [
          Item(
            name: 'Complete neurological examination',
            reference: 'dog_nervous_neuro',
          ),
          Item(
            name: 'CSF collection',
            reference: 'dog_nervous_csf',
          ),
          Item(
            name: 'Myelography',
            reference: 'dog_nervous_myelo',
          ),
        ],
      ),
      Subcategory(
        name: 'Teeth & Oral Cavity',
        icon: Icon(MdiIcons.toothbrush),
        items: [
          Item(
            name: 'Examination of the mouth',
            reference: 'dog_oral_exam',
          ),
          Item(
            name: 'Scaling (manual)',
            reference: 'dog_oral_scaling_manual',
          ),
          Item(
            name: 'Scaling (ultrasonic)',
            reference: 'dog_oral_scaling_ultra',
          ),
          Item(
            name: 'Polishing',
            reference: 'dog_oral_polish',
          ),
          Item(
            name: 'Extraction (incisors)',
            reference: 'dog_oral_extract_incisor',
          ),
          Item(
            name: 'Extraction (canines)',
            reference: 'dog_oral_extract_canine',
          ),
          Item(
            name: 'Extraction (molars/carnassials)',
            reference: 'dog_oral_extract_molar',
          ),
          Item(
            name: 'Biopsy oral mass',
            reference: 'dog_oral_biopsy',
          ),
        ],
      ),
      Subcategory(
        name: 'Restraint',
        icon: Icon(MdiIcons.handcuffs),
        items: [
          Item(
            name: 'Sedation & tranquillisation',
            reference: 'dog_restraint_chemical',
          ),
          Item(
            name: 'Manual restraint',
            reference: 'dog_restraint_manual',
          ),
          Item(
            name: 'Use of a muzzle',
            reference: 'dog_restraint_muzzle',
          ),
        ],
      ),
      Subcategory(
        name: 'General Anaesthesia',
        icon: Icon(MdiIcons.sleep),
        items: [
          Item(
            name: 'Intravenous',
            reference: 'dog_ga_iv',
          ),
          Item(
            name: 'Inhalational',
            reference: 'dog_ga_inhale',
          ),
          Item(
            name: 'Endotracheal intubation',
            reference: 'dog_ga_intubation',
          ),
          Item(
            name: 'Local anaesthesia',
            reference: 'dog_ga_local',
          ),
          Item(
            name: 'Epidural anaesthesia',
            reference: 'dog_ga_epidural',
          ),
        ],
      ),
      Subcategory(
        name: 'Skin & Ears',
        icon: Icon(MdiIcons.earHearing),
        items: [
          Item(
            name: 'Skin scraping',
            reference: 'dog_ears_scrape',
          ),
          Item(
            name: 'Use of Woods lamp',
            reference: 'dog_ears_woods',
          ),
          Item(
            name: 'Use of otoscope',
            reference: 'dog_ears_otoscope',
          ),
          Item(
            name: 'Sellotape test',
            reference: 'dog_ears_sellotape',
          ),
          Item(
            name: 'Cytology "Diff-Quik"',
            reference: 'dog_ears_cyto',
          ),
          Item(
            name: 'Impression smears',
            reference: 'dog_ears_impression',
          ),
          Item(
            name: 'Coat brushings',
            reference: 'dog_ears_brush',
          ),
          Item(
            name: 'Fine needle aspiration masses',
            reference: 'dog_ears_fna',
          ),
          Item(
            name: 'Punch biopsy',
            reference: 'dog_ears_punch',
          ),
          Item(
            name: 'Bacterial/fungal culture',
            reference: 'dog_ears_culture',
          ),
          Item(
            name: 'Aural haematoma (treatment)',
            reference: 'dog_ears_haematoma',
          ),
          Item(
            name: 'TECA & lateral bulla osteotomy',
            reference: 'dog_ears_osteotomy',
          ),
        ],
      ),
      Subcategory(
        name: 'General',
        icon: Icon(MdiIcons.apps),
        items: [
          Item(
            name: 'Intravenous catheterisation',
            reference: 'dog_general_iv_catheter',
          ),
          Item(
            name: 'Vaccination',
            reference: 'dog_general_vaccination',
          ),
          Item(
            name: 'Parenteral administration of drugs',
            reference: 'dog_general_parenteral',
          ),
          Item(
            name: 'Microchipping',
            reference: 'dog_general_microchip',
          ),
          Item(
            name: 'Euthanasia',
            reference: 'dog_general_euthanasia',
          ),
          Item(
            name: 'Skin suturing',
            reference: 'dog_general_suture',
          ),
          Item(
            name: 'Wound management (surgical)',
            reference: 'dog_general_wound_surgical',
          ),
          Item(
            name: 'Management of traumatic wound',
            reference: 'dog_general_wound_traumatic',
          ),
          Item(
            name: 'Bandaging',
            reference: 'dog_general_bandage',
          ),
          Item(
            name: 'Road traffic accident management',
            reference: 'dog_general_road',
          ),
          Item(
            name: 'Certification (general)',
            reference: 'dog_general_cert_general',
          ),
          Item(
            name: 'Certification (Pet Travel Scheme)',
            reference: 'dog_general_cert_pts',
          ),
        ],
      ),
      Subcategory(
        name: 'Intensive Care',
        icon: Icon(MdiIcons.needle),
        items: [
          Item(
            name: 'IV fluid administration',
            reference: 'dog_ic_iv_fluid',
          ),
          Item(
            name: 'Enteral (nasopharyngeal intubation)',
            reference: 'dog_ic_enteral_naso',
          ),
          Item(
            name: 'Enteral (other methods)',
            reference: 'dog_ic_enteral_other',
          ),
          Item(
            name: 'Parenteral nutrition',
            reference: 'dog_ic_parenteral',
          ),
          Item(
            name: 'Resuscitation techniques',
            reference: 'dog_ic_resus',
          ),
          Item(
            name: 'Blood pressure monitoring',
            reference: 'dog_ic_blood_pressure',
          ),
          Item(
            name: 'Blood gas analysis',
            reference: 'dog_ic_blood_gas',
          ),
        ],
      ),
    ],
  );
}
