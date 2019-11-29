import 'package:flutter/material.dart';

import '../../data/category_data.dart';
import '../../model/category.dart';
import '../../model/model.dart';
import '../../routes/enter_exit_route.dart';
import 'checklist_category_screen.dart';

class ChecklistScreen extends StatelessWidget {
  final Model model;
  final List<Category> categories = CategoryData.categoryList;

  ChecklistScreen({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clinical Checklist'),
      ),
      body: ListView.builder(
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(categories[index].name),
              leading: categories[index].icon,
              onTap: () {
                Navigator.of(context).push(
                  EnterExitRoute(
                    enterPage: ChecklistCategoryScreen(
                        model: model, category: categories[index]),
                    exitPage: this,
                  ),
                );
              },
            );
          }),
    );
  }
}
