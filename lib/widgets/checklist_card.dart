import 'package:black_book/data/progress_icons.dart';
import 'package:black_book/model/category.dart';
import 'package:black_book/model/item.dart';
import 'package:black_book/model/model.dart';
import 'package:black_book/model/subcategory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChecklistCard extends StatefulWidget {
  final Model model;
  final Category category;

  const ChecklistCard({Key key, this.model, this.category}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ChecklistCardState();
}

class _ChecklistCardState extends State<ChecklistCard> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List<Widget>.generate(widget.category.subcategories.length,
          (int i) => buildSubcategory(widget.category.subcategories[i])),
    );
  }

  Widget buildSubcategory(Subcategory subcategory) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: subcategory.icon,
            title: Text(subcategory.name),
          ),
          ...List<Widget>.generate(subcategory.items.length,
              (int i) => buildListItem(subcategory.items[i]))
        ],
      ),
    );
  }

  Widget buildListItem(Item item) {
    List<int> _progress = item.getProgress(widget.model);
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
                item.setProgress(widget.model, _progress);
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
                item.setProgress(widget.model, _progress);
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
                item.setProgress(widget.model, _progress);
              },
            ),
          ),
        ],
      ),
    );
  }
}
