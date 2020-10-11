import 'package:bloc/bloc.dart';

class CategoryCubit extends Cubit<int> {
  CategoryCubit() : super(0);

  void setIndex(int index) => emit(index);
}
