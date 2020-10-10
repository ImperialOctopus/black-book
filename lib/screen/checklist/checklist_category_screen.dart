import 'package:black_book/data/category_data.dart';
import 'package:flutter/material.dart';

import '../../component/checklist_card.dart';
import '../../model/category.dart';
import '../../model/model.dart';

class ChecklistCategoryScreen extends StatelessWidget {
  const ChecklistCategoryScreen();

  Widget build(BuildContext context) {
    final categoryIndex = ModalRoute.of(context).settings.arguments as int;

    if (categoryIndex == null) {
      return Scaffold(
        body: Center(child: Text('Error: Invalid category')),
      );
    }

    final category = CategoryData.categoryList[categoryIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text(category.name),
      ),
      body: ChecklistCard(
        model: model,
        category: category,
      ),
    );
  }
}
