import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/signature_select/signature_select_cubit.dart';

class PracticalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Practical Sign-Off')),
        body: Center(
          child: FractionallySizedBox(
            widthFactor: 0.6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                OutlinedButton(
                    child: Text('Small Animal Clinical Studies'),
                    onPressed: () {
                      BlocProvider.of<SignatureSelectCubit>(context)
                          .setReference('4_clinical_small');
                      Navigator.of(context).pushNamed('/practical/signature');
                    }),
                OutlinedButton(
                    child: Text('Farm Animal Clinical Studies'),
                    onPressed: () {
                      BlocProvider.of<SignatureSelectCubit>(context)
                          .setReference('4_clinical_farm');
                      Navigator.of(context).pushNamed('/practical/signature');
                    }),
                OutlinedButton(
                    child: Text('Equine Clinical Studies'),
                    onPressed: () {
                      BlocProvider.of<SignatureSelectCubit>(context)
                          .setReference('4_clinical_equine');
                      Navigator.of(context).pushNamed('/practical/signature');
                    }),
              ],
            ),
          ),
        ));
  }
}
