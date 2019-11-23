import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../model/category.dart';
import '../model/item.dart';
import '../model/subcategory.dart';

class CategoryDataBread {
  static const Category data = Category(
    name: 'Category of Bread',
    subcategories: [
      Subcategory(
        name: 'Test Category: Do Not Be Alarmed',
        icon: Icon(MdiIcons.breadSliceOutline),
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
  );
}
