import 'package:flutter/material.dart';

import '../../component/checklist_card.dart';
import '../../model/category.dart';
import '../../model/model.dart';

class ChecklistCategoryScreen extends StatelessWidget {
  final Model model;
  final Category category;
  const ChecklistCategoryScreen({Key key, this.model, this.category})
      : super(key: key);

  Widget build(BuildContext context) {
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
