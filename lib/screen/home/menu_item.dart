import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final double maxHeight = 200;
  final int labelAlpha = 80;

  final String name;
  final Widget child;
  final int flex;
  final Function onTap;

  const MenuItem({this.name, this.child, this.flex = 1, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: maxHeight),
        child: InkWell(
          child: Stack(
            children: <Widget>[
              Positioned.fill(child: child),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  color: Theme.of(context).primaryColor.withAlpha(labelAlpha),
                  child: Padding(
                    padding: EdgeInsets.only(right: 4),
                    child: Text(
                      name,
                      textAlign: TextAlign.end,
                      style: Theme.of(context).primaryTextTheme.headline6,
                    ),
                  ),
                ),
              ),
            ],
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
