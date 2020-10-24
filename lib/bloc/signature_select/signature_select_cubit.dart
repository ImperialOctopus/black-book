import 'package:bloc/bloc.dart';

class SignatureSelectCubit extends Cubit<String> {
  SignatureSelectCubit() : super('');

  void setReference(String reference) => emit(reference);
}
