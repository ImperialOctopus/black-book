import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/progress_icons.dart';
import '../model/category.dart';
import '../model/item.dart';
import '../model/subcategory.dart';

class ChecklistCard extends StatefulWidget {
  final Category category;
  final List<int> startingProgress;

  const ChecklistCard({
    this.category,
    this.startingProgress,
  });

  @override
  State<StatefulWidget> createState() => _ChecklistCardState();
}

class _ChecklistCardState extends State<ChecklistCard> {
  final List<int> progress;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List<Widget>.generate(widget.category.subcategories.length,
          (i) => buildSubcategory(widget.category.subcategories[i])),
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
              (i) => buildListItem(subcategory.items[i]))
        ],
      ),
    );
  }

  Widget buildListItem(Item item) {
    final _progress = item.getProgress(widget.model);
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
