import 'package:black_book/data/category_data.dart';
import 'package:black_book/model/category.dart';
import 'package:black_book/model/model.dart';
import 'package:black_book/routes/slide_left_route.dart';
import 'package:black_book/widgets/category_widget.dart';
import 'package:flutter/material.dart';

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
