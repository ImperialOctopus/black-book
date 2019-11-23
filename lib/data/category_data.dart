import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../model/category.dart';
import '../model/item.dart';
import '../model/subcategory.dart';
import 'category_data_dog.dart';
import 'category_data_cat.dart';

class CategoryData {
  static const List<Category> categoryList = [
    CategoryDataDog.data,
    CategoryDataCat.data,
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
