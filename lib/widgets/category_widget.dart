import 'package:black_book/model/category.dart';
import 'package:black_book/model/item.dart';
import 'package:black_book/model/model.dart';
import 'package:black_book/model/subcategory.dart';
import 'package:black_book/widgets/progress_icon_widget.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  final Model model;
  final Category category;
  const CategoryWidget({Key key, this.model, this.category}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CategoryWidgetState(model: model, category: category);
  }
}

class _CategoryWidgetState extends State<CategoryWidget> {
  final Model model;
  final Category category;
  _CategoryWidgetState({this.model, this.category});

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
      title: Text(item.name),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          IconButton(
            icon: ProgressIconWidget.intMap[_progress[0]],
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
            icon: ProgressIconWidget.intMap[_progress[1]],
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
            icon: ProgressIconWidget.intMap[_progress[2]],
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
