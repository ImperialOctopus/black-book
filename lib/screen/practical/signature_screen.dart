import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/signature/signature_bloc.dart';
import '../../bloc/signature/signature_event.dart';
import '../../component/signature_canvas.dart';
import '../../model/signature/stroke.dart';
import '../../service/signature_service.dart';

class SignatureScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(
        create: (context) => SignatureBloc(
            reference: 'test',
            signatureService: RepositoryProvider.of<SignatureService>(context))
          ..add(SignatureEventLoad()),
        child: BlocBuilder<SignatureBloc, List<Stroke>>(
          builder: (context, state) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 300,
                  width: 300,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent)),
                    child: SignatureCanvas(),
                  ),
                ),
                Text(BlocProvider.of<SignatureBloc>(context).reference),
                Text(BlocProvider.of<SignatureBloc>(context).state.toString()),
                OutlinedButton(
                  child: Text('Refresh'),
                  onPressed: () {
                    BlocProvider.of<SignatureBloc>(context)
                        .add(SignatureEventLoad());
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
