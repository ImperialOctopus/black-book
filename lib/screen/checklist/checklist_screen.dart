import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/category/category_cubit.dart';
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
              onTap: () {
                BlocProvider.of<CategoryCubit>(context).setIndex(index);
                Navigator.of(context).pushNamed('/checklist/category');
              });
        },
        separatorBuilder: (context, index) => Divider(),
      ),
    );
  }
}
