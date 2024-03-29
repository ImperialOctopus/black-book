import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/signature/signature_bloc.dart';
import '../../bloc/signature/signature_event.dart';
import '../../component/signature/signature_canvas.dart';
import '../../model/signature/stroke.dart';
import '../../service/signature_service.dart';

class SignatureScreen extends StatelessWidget {
  final Widget title;
  final String reference;

  const SignatureScreen({@required this.title, @required this.reference});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: title),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pop(),
        child: const Icon(Icons.done),
      ),
      body: BlocProvider(
        create: (context) => SignatureBloc(
            reference: reference,
            signatureService: RepositoryProvider.of<SignatureService>(context))
          ..add(SignatureEventLoad()),
        child: BlocBuilder<SignatureBloc, List<Stroke>>(
          builder: (context, state) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DefaultTextStyle.merge(
                  style: const TextStyle(fontSize: 20),
                  child: title,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent)),
                      child: const SignatureCanvas(),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 100,
                      height: 50,
                      child: OutlinedButton(
                        child: const Text('Undo'),
                        onPressed: () {
                          BlocProvider.of<SignatureBloc>(context)
                              .add(SignatureEventUndo());
                        },
                      ),
                    ),
                    Container(width: 20),
                    Container(
                      width: 100,
                      height: 50,
                      child: OutlinedButton(
                        child: const Text('Clear'),
                        onPressed: () {
                          showDialog<AlertDialog>(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text("Clear Signature"),
                              content: const Text(
                                  // ignore: lines_longer_than_80_chars
                                  "Are you sure you want to clear this signature?"),
                              actions: [
                                TextButton(
                                  child: const Text("Cancel"),
                                  onPressed: () => Navigator.of(context).pop(),
                                ),
                                TextButton(
                                    child: const Text("Clear Signature"),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      BlocProvider.of<SignatureBloc>(context)
                                          .add(SignatureEventClear());
                                    }),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
