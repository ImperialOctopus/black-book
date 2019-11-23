import '../model/category.dart';
import 'category_data_bread.dart';
import 'category_data_dog.dart';
import 'category_data_cat.dart';
import 'category_data_horse.dart';

class CategoryData {
  static const List<Category> categoryList = [
    CategoryDataDog.data,
    CategoryDataCat.data,
    CategoryDataHorse.data,
    CategoryDataBread.data,
  ];
}
