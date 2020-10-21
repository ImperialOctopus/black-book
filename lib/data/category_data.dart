import '../model/checklist/category.dart';
import 'category_data_cat.dart';
import 'category_data_cattle.dart';
import 'category_data_dog.dart';
import 'category_data_exotic.dart';
import 'category_data_horse.dart';
import 'category_data_lab.dart';
import 'category_data_pigs.dart';
import 'category_data_sheep.dart';

class CategoryData {
  static const List<Category> categoryList = [
    CategoryDataDog.data,
    CategoryDataCat.data,
    CategoryDataHorse.data,
    CategoryDataCattle.data,
    CategoryDataSheep.data,
    CategoryDataPigs.data,
    CategoryDataExotic.data,
    CategoryDataLab.data,
  ];
}
