import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/signature/signature_bloc.dart';
import '../../bloc/signature/signature_event.dart';
import '../../bloc/signature_select/signature_select_cubit.dart';
import '../../component/signature/signature_canvas.dart';
import '../../error/invalid_state.dart';
import '../../model/signature/stroke.dart';
import '../../service/signature_service.dart';

class SignatureScreen extends StatelessWidget {
  static const double signatureWidth = 500;
  static const double signatureHeight = 300;

  @override
  Widget build(BuildContext context) {
    if (BlocProvider.of<SignatureSelectCubit>(context).state == '') {
      return InvalidStateComponent();
    }
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(
        create: (context) => SignatureBloc(
            reference: BlocProvider.of<SignatureSelectCubit>(context).state,
            signatureService: RepositoryProvider.of<SignatureService>(context))
          ..add(SignatureEventLoad()),
        child: BlocBuilder<SignatureBloc, List<Stroke>>(
          builder: (context, state) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(BlocProvider.of<SignatureBloc>(context).reference),
                SizedBox(
                  height: signatureHeight,
                  width: signatureWidth,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent)),
                    child: const SignatureCanvas(),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    OutlinedButton(
                      child: const Text('Undo'),
                      onPressed: () {
                        BlocProvider.of<SignatureBloc>(context)
                            .add(SignatureEventUndo());
                      },
                    ),
                    OutlinedButton(
                      child: const Text('Clear'),
                      onPressed: () {
                        BlocProvider.of<SignatureBloc>(context)
                            .add(SignatureEventClear());
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
