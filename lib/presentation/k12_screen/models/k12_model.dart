import 'package:get/get.dart';
import 'k5_item_model.dart';

class K12Model {
  RxList<K5ItemModel> k5ItemList = RxList.generate(4, (index) => K5ItemModel());
}
