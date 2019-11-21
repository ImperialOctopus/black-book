import 'package:black_book/model/category.dart';
import 'package:black_book/model/item.dart';
import 'package:black_book/model/model.dart';
import 'package:black_book/routes/slide_left_route.dart';
import 'package:black_book/widgets/category_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final Model model;
  HomeScreen({Key key, this.model}) : super(key: key);

  static const List<Category> categories = [
    Category(
      name: 'Dog Category',
      items: [
        Item(
          name: 'First Item',
          reference: 'dog_first',
        ),
        Item(
          name: 'Second Item',
          reference: 'dog_second',
        ),
        Item(
          name: 'Last Item',
          reference: 'dog_third',
        ),
      ],
    ),
    Category(
      name: 'Category of Bread',
      items: [
        Item(
          name: 'Bread One',
          reference: 'bread_one',
        ),
        Item(
          name: 'Additional Bread',
          reference: 'bread_two',
        ),
        Item(
          name: 'Final Bread',
          reference: 'bread_third',
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
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
