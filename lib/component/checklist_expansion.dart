import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/progress_icons.dart';
import '../model/category.dart';
import '../model/item.dart';
import '../model/subcategory.dart';
import '../service/model_service.dart';
import 'custom_expansion_tile.dart';

class ChecklistExpansion extends StatefulWidget {
  final Category category;

  const ChecklistExpansion({required this.category});

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
            (i) => buildSubcategory(widget.category.subcategories[i])),
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
            (i) => buildListItem(subcategory.items[i])),
      ).toList(),
    );
  }

  Widget buildListItem(Item item) {
    final _modelService = RepositoryProvider.of<ModelService>(context);
    final _progress = _modelService.get(item.reference);

    return ListTile(
      title: Text(
        item.name,
        style: item.essential ? TextStyle(fontStyle: FontStyle.italic) : null,
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          IconButton(
            icon: ProgressIcons.intMap[_progress[0]] ?? Container(),
            onPressed: () => setState(
              () {
                _progress[0] += 1;
                if (_progress[0] > 2) {
                  _progress[0] = 0;
                }
                _modelService.put(item.reference, _progress);
              },
            ),
          ),
          IconButton(
            icon: ProgressIcons.intMap[_progress[1]] ?? Container(),
            onPressed: () => setState(
              () {
                _progress[1] += 1;
                if (_progress[1] > 2) {
                  _progress[1] = 0;
                }
                _modelService.put(item.reference, _progress);
              },
            ),
          ),
          IconButton(
            icon: ProgressIcons.intMap[_progress[2]] ?? Container(),
            onPressed: () => setState(
              () {
                _progress[2] += 1;
                if (_progress[2] > 2) {
                  _progress[2] = 0;
                }
                _modelService.put(item.reference, _progress);
              },
            ),
          ),
        ],
      ),
    );
  }
}
