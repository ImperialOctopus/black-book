import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/signature/signature_bloc.dart';
import '../../bloc/signature/signature_event.dart';
import '../../model/signature/stroke.dart';
import '../../screen/signature/signature_screen.dart';
import '../../service/signature_service.dart';
import 'static_signature_canvas.dart';
import 'static_signature_container.dart';

class SignatureListItem extends StatelessWidget {
  final Widget title;
  final Widget entryLabel;
  final String reference;

  const SignatureListItem(
      {@required this.title,
      @required this.entryLabel,
      @required this.reference});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignatureBloc>(
      create: (context) => SignatureBloc(
          reference: reference,
          signatureService: RepositoryProvider.of<SignatureService>(context))
        ..add(SignatureEventLoad()),
      child: BlocBuilder<SignatureBloc, List<Stroke>>(
        builder: (context, strokes) => ListTile(
          title: title,
          trailing: StaticSignatureContainer(
            child: StaticSignatureCanvas(strokes: strokes),
          ),
          onTap: () => openSignaturePage(context, reference),
        ),
      ),
    );
  }

  void openSignaturePage(BuildContext context, String reference) {
    Navigator.of(context)
        .push<void>(MaterialPageRoute(
            builder: (context) =>
                SignatureScreen(title: entryLabel, reference: reference)))
        .then<void>((_) =>
            BlocProvider.of<SignatureBloc>(context).add(SignatureEventLoad()));
  }
}
