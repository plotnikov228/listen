import 'package:get/get.dart';
import 'listtwohundredtwelve_item_model.dart';
import 'listtwohundredseventeen_item_model.dart';
import 'gridtwohundredtwentyfive_item_model.dart';

class K9Model {
  RxList<ListtwohundredtwelveItemModel> listtwohundredtwelveItemList =
      RxList.generate(3, (index) => ListtwohundredtwelveItemModel());

  RxList<ListtwohundredseventeenItemModel> listtwohundredseventeenItemList =
      RxList.generate(3, (index) => ListtwohundredseventeenItemModel());

  RxList<GridtwohundredtwentyfiveItemModel> gridtwohundredtwentyfiveItemList =
      RxList.generate(6, (index) => GridtwohundredtwentyfiveItemModel());
}
