import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../model/signature/stroke.dart';
import '../../service/signature_service.dart';
import 'signature_event.dart';

class SignatureBloc extends Bloc<SignatureEvent, List<Stroke>> {
  final String reference;
  final SignatureService signatureService;

  SignatureBloc({@required this.reference, @required this.signatureService})
      : super([]);

  @override
  Stream<List<Stroke>> mapEventToState(SignatureEvent event) async* {
    if (event is SignatureEventLoad) {
      yield signatureService.get(reference);
    }
    if (event is SignatureEventAdd) {
      final newList = state.toList()..add(event.stroke);
      signatureService.put(reference, newList);
      yield newList;
    }
    if (event is SignatureEventUndo) {
      final newList = state.toList();
      if (newList.isNotEmpty) {
        newList.removeLast();
      }
      signatureService.put(reference, newList);
      yield newList;
    }
    if (event is SignatureEventClear) {
      final newList = <Stroke>[];
      signatureService.put(reference, newList);
      yield newList;
    }
  }
}
