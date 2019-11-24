import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../model/category.dart';
import '../model/item.dart';
import '../model/subcategory.dart';

class CategoryDataCattle {
  static const Category data = Category(
    name: 'Cattle',
    icon: Icon(MdiIcons.cow),
    subcategories: [
      Subcategory(
        name: 'Alimentary System',
        icon: Icon(MdiIcons.stomach),
        items: [
          Item(
            name: 'Oral examination & use of gag',
            reference: 'cattle_alimentary_exam_oral',
          ),
          Item(
            name: 'Examination of abdomen',
            reference: 'cattle_alimentary_exam_abdomen',
          ),
          Item(
            name: 'Displaced abomasum (rolling)',
            reference: 'cattle_alimentary_abomasum_roll',
          ),
          Item(
            name: 'Displaced abomasum (surgery)',
            reference: 'cattle_alimentary_abomasum_surgery',
          ),
          Item(
            name: 'Rehydration (oral)',
            reference: 'cattle_alimentary_rehydration_oral',
          ),
          Item(
            name: 'Rehydration (parenteral)',
            reference: 'cattle_alimentary_rehydration_parenteral',
          ),
          Item(
            name: 'Oral administration of medication',
            reference: 'cattle_alimentary_medication_oral',
          ),
          Item(
            name: 'Stomach intubation',
            reference: 'cattle_alimentary_intubation_stomach',
          ),
          Item(
            name: 'Traumatic reticulitis',
            reference: 'cattle_alimentary_reticulitis',
          ),
          Item(
            name: 'Bloat (trocharisation/stomach tube)',
            reference: 'cattle_alimentary_bloat',
          ),
          Item(
            name: 'Abdominal paracentesis',
            reference: 'cattle_alimentary_centesis',
          ),
        ],
      ),
      Subcategory(
        name: 'Urogenital System',
        icon: Icon(MdiIcons.toilet),
        items: [
          Item(
            name: 'Observe normal calving',
            reference: 'cattle_urogenital_parturition',
          ),
          Item(
            name: 'Herd infertility (record analysis)',
            reference: 'cattle_urogenital_herd_infertility',
          ),
          Item(
            name: 'Pregnancy diagnosis (manual)',
            reference: 'cattle_urogenital_pregnancy_manual',
          ),
          Item(
            name: 'Pregnancy diagnosis (ultrasound)',
            reference: 'cattle_urogenital_pregnancy_ultra',
          ),
          Item(
            name: 'Abortion procedures',
            reference: 'cattle_urogenital_abortion',
          ),
          Item(
            name: 'Retained foetal membranes',
            reference: 'cattle_urogenital_retained_membrane',
          ),
          Item(
            name: 'Dystocia',
            reference: 'cattle_urogenital_dystocia',
          ),
          Item(
            name: 'Caesarean section',
            reference: 'cattle_urogenital_caesarean',
          ),
          Item(
            name: 'Uterine catheterisation',
            reference: 'cattle_urogenital_catherer_uterine',
          ),
          Item(
            name: 'Castration (surgical)',
            reference: 'cattle_urogenital_castration_surgical',
          ),
          Item(
            name: 'Castration (Burdizzo)',
            reference: 'cattle_urogenital_castration_burdizzo',
          ),
          Item(
            name: 'Castration (rubber ring)',
            reference: 'cattle_urogenital_castration_ring',
          ),
          Item(
            name: 'Uterine irrigation',
            reference: 'cattle_urogenital_irrigation_uterine',
          ),
          Item(
            name: 'Uterine prolapse',
            reference: 'cattle_urogenital_prolapse_uterine',
          ),
          Item(
            name: 'Cervical prolapse',
            reference: 'cattle_urogenital_prolapse_cervical',
          ),
          Item(
            name: 'Artificial insemination',
            reference: 'cattle_urogenital_ai',
          ),
          Item(
            name: 'Vaginal examination using speculum',
            reference: 'cattle_urogenital_speculum',
          ),
          Item(
            name: 'Removal of supernumerary teats',
            reference: 'cattle_urogenital_teat_removal',
          ),
          Item(
            name: 'Genital examination of the bull',
            reference: 'cattle_urogenital_exam_bull',
          ),
          Item(
            name: 'Collection of preputial washing',
            reference: 'cattle_urogenital_preputial',
          ),
        ],
      ),
      Subcategory(
        name: 'Thorax',
        icon: Icon(MdiIcons.lungs),
        items: [
          Item(
            name: 'Examination of thorax (adult)',
            reference: 'cattle_thorax_exam_adult',
          ),
          Item(
            name: 'Examination of thorax (calf)',
            reference: 'cattle_thorax_exam_calf',
          ),
          Item(
            name: 'Use of normal & guarded swabs',
            reference: 'cattle_thorax_swab',
          ),
          Item(
            name: 'Tracheobronchial/BA lavage',
            reference: 'cattle_thorax_lavage',
          ),
        ],
      ),
      Subcategory(
        name: 'Locomotor System',
        icon: Icon(MdiIcons.armFlex),
        items: [
          Item(
            name: 'Evaluation of lameness',
            reference: 'cattle_locomotor_lame_eval',
          ),
          Item(
            name: 'Examine lame foot',
            reference: 'cattle_locomotor_lame_exam',
          ),
          Item(
            name: 'Pare lame foot',
            reference: 'cattle_locomotor_lame_pare',
          ),
          Item(
            name: 'Foot trimming',
            reference: 'cattle_locomotor_foot_trim',
          ),
          Item(
            name: 'Apply foot block',
            reference: 'cattle_locomotor_foot_block',
          ),
          Item(
            name: 'Amputate digit',
            reference: 'cattle_locomotor_amputate',
          ),
          Item(
            name: 'Application of casts & splints',
            reference: 'cattle_locomotor_cast',
          ),
        ],
      ),
      Subcategory(
        name: 'Examination for Metabolic Diseases',
        icon: Icon(MdiIcons.flash),
        items: [
          Item(
            name: 'Hypocalcaemia / Mg / P',
            reference: 'cattle_metabolic_ions',
          ),
          Item(
            name: 'Downer cow examination',
            reference: 'cattle_metabolic_downer',
          ),
        ],
      ),
      Subcategory(
        name: 'Dermatology',
        icon: Icon(MdiIcons.script),
        items: [
          Item(
            name: 'Collection of hair pluck',
            reference: 'cattle_skin_pluck',
          ),
          Item(
            name: 'Collection of skin scraping',
            reference: 'cattle_skin_scrape',
          ),
        ],
      ),
      Subcategory(
        name: 'Anaesthesia',
        icon: Icon(MdiIcons.sleep),
        items: [
          Item(
            name: 'Sedation & tranquillisation',
            reference: 'cattle_anaesthesia_sedation',
          ),
          Item(
            name: 'Local anaesthesia (infiltration)',
            reference: 'cattle_anaesthesia_local',
          ),
          Item(
            name: 'Epidural anaesthesia',
            reference: 'cattle_anaesthesia_epidural',
          ),
          Item(
            name: 'Paravertebral anaesthesia',
            reference: 'cattle_anaesthesia_paravertebral',
          ),
          Item(
            name: 'IV regional anaesthesia',
            reference: 'cattle_anaesthesia_regional',
          ),
        ],
      ),
      Subcategory(
        name: 'Eyes and Adnexa',
        icon: Icon(MdiIcons.eye),
        items: [
          Item(
            name: 'Use of pen torch',
            reference: 'cattle_eyes_torch',
          ),
          Item(
            name: 'Use of ophthalmoscope',
            reference: 'cattle_eyes_scope',
          ),
          Item(
            name: 'Subconjuctival injection',
            reference: 'cattle_eyes_inject',
          ),
        ],
      ),
      Subcategory(
        name: 'General',
        icon: Icon(MdiIcons.apps),
        items: [
          Item(
            name: 'Condition scoring',
            reference: 'cattle_general_condition',
          ),
          Item(
            name: 'Disbudding',
            reference: 'cattle_general_disbud',
          ),
          Item(
            name: 'Dehorning',
            reference: 'cattle_general_dehorn',
          ),
          Item(
            name: 'Physical restraint',
            reference: 'cattle_general_restraint',
          ),
          Item(
            name: 'Parenteral administration of drugs',
            reference: 'cattle_general_drugs_parenteral',
          ),
          Item(
            name: 'Casualty slaughter certification',
            reference: 'cattle_general_cert_casualty',
          ),
          Item(
            name: 'Storage, use, recording, disposal of medicines on farm',
            reference: 'cattle_general_farm_medicines',
          ),
          Item(
            name: 'Mastitis investigation (individual)',
            reference: 'cattle_general_mastitis_single',
          ),
          Item(
            name: 'Mastitis investigation (herd)',
            reference: 'cattle_general_mastitis_herd',
          ),
          Item(
            name: 'TB testing',
            reference: 'cattle_general_tb',
          ),
          Item(
            name: 'Wound management',
            reference: 'cattle_general_wound_manage',
          ),
          Item(
            name: 'Skin suturing',
            reference: 'cattle_general_wound_suture',
          ),
          Item(
            name: 'Bull ringing',
            reference: 'cattle_general_bull_ring',
          ),
          Item(
            name: 'Teat lesions & surgery',
            reference: 'cattle_general_teat_lesion',
          ),
          Item(
            name: 'Vaccination',
            reference: 'cattle_general_vaccination',
          ),
          Item(
            name: 'Euthanasia',
            reference: 'cattle_general_euthanasia',
          ),
          Item(
            name: 'Herd Health Plan preparation for Farm Assurance',
            reference: 'cattle_general_farm_assurance',
          ),
        ],
      ),
      Subcategory(
        name: 'Obtaining Samples for Laboratory Testing',
        icon: Icon(MdiIcons.testTube),
        items: [
          Item(
            name: 'Urine',
            reference: 'cattle_lab_urine',
          ),
          Item(
            name: 'Milk',
            reference: 'cattle_lab_milk',
          ),
          Item(
            name: 'Blood (inc. Brucellosis testing)',
            reference: 'cattle_lab_blood',
          ),
          Item(
            name: 'Faeces',
            reference: 'cattle_lab_faeces',
          ),
          Item(
            name: 'Culture swabs',
            reference: 'cattle_lab_culture',
          ),
        ],
      ),
    ],
  );
}
