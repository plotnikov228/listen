import 'package:get/get.dart';
import 'k4_item_model.dart';

class K7Model {
  RxList<K4ItemModel> k4ItemList =
      RxList.generate(10, (index) => K4ItemModel());
}
