import 'package:flutter/material.dart';

import '../data/category_data.dart';
import '../model/category.dart';
import '../model/model.dart';
import '../routes/slide_left_route.dart';
import '../widgets/category_widget.dart';

class HomeScreen extends StatelessWidget {
  final Model model;
  final List<Category> categories = CategoryData.categoryList;

  HomeScreen({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Black Book Category List'),
      ),
      body: ListView.builder(
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(categories[index].name),
              onTap: () {
                Navigator.of(context).push(
                  SlideLeftRoute(
                    page: CategoryWidget(
                        model: model, category: categories[index]),
                  ),
                );
              },
            );
          }),
    );
  }
}
