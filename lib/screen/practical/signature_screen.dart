import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/signature/signature_bloc.dart';
import '../../bloc/signature/signature_event.dart';
import '../../component/signature_canvas.dart';
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(BlocProvider.of<SignatureBloc>(context).reference),
              SizedBox(
                height: 300,
                width: 300,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent)),
                  child: SignatureCanvas(),
                ),
              ),
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
    );
  }
}
