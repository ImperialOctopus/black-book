import 'package:flutter/material.dart';

import '../../model/category.dart';
import '../../model/item.dart';
import '../../model/model.dart';
import '../../model/subcategory.dart';
import '../../data/progress_icons.dart';

class ChecklistCategoryScreen extends StatefulWidget {
  final Model model;
  final Category category;
  const ChecklistCategoryScreen({Key key, this.model, this.category})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ChecklistCategoryScreenState(model: model, category: category);
  }
}

class _ChecklistCategoryScreenState extends State<ChecklistCategoryScreen> {
  final Model model;
  final Category category;
  _ChecklistCategoryScreenState({this.model, this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.name),
      ),
      body: ListView(
        children: List<Widget>.generate(category.subcategories.length,
            (int i) => buildSubcategory(category.subcategories[i])),
      ),
    );
  }

  Widget buildSubcategory(Subcategory subcategory) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ...?(subcategory.showName
              ? [
                  ListTile(
                    leading: subcategory.icon,
                    title: Text(subcategory.name),
                  )
                ]
              : null),
          ...List<Widget>.generate(subcategory.items.length,
              (int i) => buildListItem(subcategory.items[i]))
        ],
      ),
    );
  }

  Widget buildListItem(Item item) {
    List<int> _progress = item.getProgress(model);
    return ListTile(
      title: Text(
        item.name,
        style: item.essential ? TextStyle(fontStyle: FontStyle.italic) : null,
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          IconButton(
            icon: ProgressIcons.intMap[_progress[0]],
            onPressed: () => setState(
              () {
                _progress[0] += 1;
                if (_progress[0] > 2) {
                  _progress[0] = 0;
                }
                item.setProgress(model, _progress);
              },
            ),
          ),
          IconButton(
            icon: ProgressIcons.intMap[_progress[1]],
            onPressed: () => setState(
              () {
                _progress[1] += 1;
                if (_progress[1] > 2) {
                  _progress[1] = 0;
                }
                item.setProgress(model, _progress);
              },
            ),
          ),
          IconButton(
            icon: ProgressIcons.intMap[_progress[2]],
            onPressed: () => setState(
              () {
                _progress[2] += 1;
                if (_progress[2] > 2) {
                  _progress[2] = 0;
                }
                item.setProgress(model, _progress);
              },
            ),
          ),
        ],
      ),
      /*onLongPress: () {
              Navigator.of(context).push(
                SlideLeftRoute(
                  page: ItemWidget(model: model, item: category.items[index]),
                ),
              );
            },*/
    );
  }
}
