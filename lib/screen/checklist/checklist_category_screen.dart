import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/category/category_cubit.dart';
import '../../component/checklist_card.dart';
import '../../data/category_data.dart';

class ChecklistCategoryScreen extends StatelessWidget {
  const ChecklistCategoryScreen();

  Widget build(BuildContext context) {
    final categoryIndex = BlocProvider.of<CategoryCubit>(context).state;

    final category = CategoryData.categoryList[categoryIndex];

    if (category == null) {
      return Scaffold(
        body: Center(child: Text('Error: Invalid category')),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(category.name),
      ),
      body: ChecklistCard(
        category: category,
      ),
    );
  }
}
