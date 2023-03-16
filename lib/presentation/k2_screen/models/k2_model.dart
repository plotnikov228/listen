import 'package:get/get.dart';
import 'listsixteen_item_model.dart';
import 'k0_item_model.dart';
import 'listfortyone_item_model.dart';
import 'listfiftyone_item_model.dart';
import 'listfiftyeight_item_model.dart';

class K2Model {
  RxList<ListsixteenItemModel> listsixteenItemList =
      RxList.generate(3, (index) => ListsixteenItemModel());

  RxList<K0ItemModel> k0ItemList = RxList.generate(8, (index) => K0ItemModel());

  RxList<ListfortyoneItemModel> listfortyoneItemList =
      RxList.generate(3, (index) => ListfortyoneItemModel());

  RxList<ListfiftyoneItemModel> listfiftyoneItemList =
      RxList.generate(3, (index) => ListfiftyoneItemModel());

  RxList<ListfiftyeightItemModel> listfiftyeightItemList =
      RxList.generate(3, (index) => ListfiftyeightItemModel());
}
