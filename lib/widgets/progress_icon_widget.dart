import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ProgressIconWidget {
  static Icon fromInt(int i) {
    switch (i) {
      case 0:
        {
          return Icon(MdiIcons.officeBuilding);
        }
      case 1:
        {
          return Icon(MdiIcons.officeBuilding);
        }
      case 2:
        {
          return Icon(MdiIcons.officeBuilding);
        }
      default:
        {
          return null;
        }
    }
  }
}
