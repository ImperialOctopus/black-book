import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/progress_icons.dart';
import '../../model/checklist/category.dart';
import '../../model/checklist/item.dart';
import '../../model/checklist/subcategory.dart';
import '../../service/checklist_service.dart';

class ChecklistCards extends StatefulWidget {
  final Category category;

  const ChecklistCards({@required this.category});

  @override
  State<StatefulWidget> createState() => _ChecklistCardsState();
}

class _ChecklistCardsState extends State<ChecklistCards> {
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
    final _modelService = RepositoryProvider.of<ChecklistService>(context);
    final _progress = _modelService.get(item.reference);

    return ListTile(
      title: Text(
        item.name,
        style: item.essential
            ? const TextStyle(fontStyle: FontStyle.italic)
            : null,
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
                _modelService.put(item.reference, _progress);
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
                _modelService.put(item.reference, _progress);
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
                _modelService.put(item.reference, _progress);
              },
            ),
          ),
        ],
      ),
    );
  }
}
