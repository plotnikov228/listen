import 'package:get/get.dart';
import 'listninetysix_item_model.dart';
import 'k2_item_model.dart';

class K4Model {
  RxList<ListninetysixItemModel> listninetysixItemList =
      RxList.generate(3, (index) => ListninetysixItemModel());

  RxList<K2ItemModel> k2ItemList = RxList.generate(6, (index) => K2ItemModel());
}
