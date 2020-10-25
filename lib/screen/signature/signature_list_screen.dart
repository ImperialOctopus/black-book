import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../bloc/signature_select/signature_select_cubit.dart';
import '../../component/signature/list_card.dart';
import '../../component/signature/static_signature_container.dart';

class PracticalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Practical Sign-Off')),
      body: ListView(
        children: [
          ListCard(
            children: [
              const ListTile(
                leading: Icon(MdiIcons.rabbit),
                title: Text('Fourth Year - Small Animal Clinical Studies'),
              ),
              ListTile(
                title: const Text('Session 1'),
                trailing: const StaticSignatureContainer(child: null),
                onTap: () => openSignaturePage(context, '4_clinical_small'),
              ),
            ],
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
