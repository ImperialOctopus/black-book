import 'package:black_book/data/progress_icons.dart';
import 'package:black_book/model/category.dart';
import 'package:black_book/model/item.dart';
import 'package:black_book/model/model.dart';
import 'package:black_book/model/subcategory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_expansion_tile.dart';

class ChecklistExpansion extends StatefulWidget {
  final Model model;
  final Category category;

  const ChecklistExpansion({Key key, this.model, this.category})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _ChecklistExpansionState();
}

class _ChecklistExpansionState extends State<ChecklistExpansion> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(
        context: context,
        tiles: List<Widget>.generate(widget.category.subcategories.length,
            (int i) => buildSubcategory(widget.category.subcategories[i])),
      ).toList(),
    );
  }

  Widget buildSubcategory(Subcategory subcategory) {
    return CustomExpansionTile(
      //openColor: Colors.grey[700],
      leading: subcategory.icon,
      title: Text(subcategory.name),
      initiallyExpanded: false,
      children: ListTile.divideTiles(
        context: context,
        tiles: List<Widget>.generate(subcategory.items.length,
            (int i) => buildListItem(subcategory.items[i])),
      ).toList(),
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
