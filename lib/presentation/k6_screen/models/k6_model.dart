import 'package:get/get.dart';
import 'k3_item_model.dart';

class K6Model {
  RxList<K3ItemModel> k3ItemList = RxList.generate(6, (index) => K3ItemModel());
}
