import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../bloc/signature_select/signature_select_cubit.dart';

class PracticalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Practical Sign-Off')),
      body: ListView(
        children: [
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(MdiIcons.rabbit),
                  title: Text('Fourth Year - Small Animal Clinical Studies'),
                ),
                ListTile(
                  title: Text('Session 1'),
                  trailing: Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide(
                                width: 2.0, color: Colors.lightBlue[100]))),
                    child: FittedBox(
                      fit: BoxFit.contain,
                    ),
                  ),
                  onTap: () => openSignaturePage(context, '4_clinical_small'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void openSignaturePage(BuildContext context, String reference) {
    BlocProvider.of<SignatureSelectCubit>(context)
        .setReference('4_clinical_small');
    Navigator.of(context).pushNamed('/practical/signature');
  }
}
