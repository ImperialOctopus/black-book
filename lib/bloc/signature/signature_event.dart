import 'package:equatable/equatable.dart';

import '../../model/signature/stroke.dart';

abstract class SignatureEvent extends Equatable {}

class SignatureEventLoad extends SignatureEvent {
  @override
  List<Object> get props => [];
}

class SignatureEventAdd extends SignatureEvent {
  final Stroke stroke;

  SignatureEventAdd(this.stroke);

  @override
  List<Object> get props => [stroke];
}

class SignatureEventUndo extends SignatureEvent {
  @override
  List<Object> get props => [];
}

class SignatureEventClear extends SignatureEvent {
  @override
  List<Object> get props => [];
}
