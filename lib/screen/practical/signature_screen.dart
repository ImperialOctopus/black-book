import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/signature/signature_bloc.dart';
import '../../component/signature_canvas.dart';
import '../../service/signature_service.dart';

class SignatureScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          height: 300,
          width: 300,
          child: Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.blueAccent)),
              child: BlocProvider(
                create: (context) => SignatureBloc(
                    reference: 'test',
                    signatureService:
                        RepositoryProvider.of<SignatureService>(context)),
                child: SignatureCanvas(),
              )),
        ),
      ),
    );
  }
}
