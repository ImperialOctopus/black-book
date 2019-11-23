import 'package:black_book/model/category.dart';
import 'package:black_book/model/model.dart';
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
      body: ListView.builder(
        itemCount: category.items.length,
        itemBuilder: (BuildContext context, int index) {
          List<int> _progress = category.items[index].progress;
          return ListTile(
            title: Text(category.items[index].name),
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
                      category.items[index].progress = _progress;
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
                      category.items[index].progress = _progress;
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
                      category.items[index].progress = _progress;
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
        },
      ),
    );
  }
}
