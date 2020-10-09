import 'package:flutter/material.dart';

import '../../data/category_data.dart';
import '../../model/category.dart';
import '../../model/model.dart';

class ChecklistScreen extends StatelessWidget {
  final Model model;
  final List<Category> categories = CategoryData.categoryList;

  ChecklistScreen({this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clinical Checklist'),
      ),
      body: ListView.separated(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(categories[index].name),
            leading: categories[index].icon,
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () => Navigator.of(context)
                .pushNamed('/checklist/category', arguments: index),
          );
        },
        separatorBuilder: (context, index) => Divider(),
      ),
    );
  }
}
