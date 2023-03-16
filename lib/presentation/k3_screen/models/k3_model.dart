import 'package:get/get.dart';
import 'listseventyone_item_model.dart';
import 'listseventyeight_item_model.dart';
import 'k1_item_model.dart';

class K3Model {


  RxList<ListseventyoneItemModel> listseventyoneItemList =
      RxList.generate(3, (index) => ListseventyoneItemModel());

  RxList<ListseventyeightItemModel> listseventyeightItemList =
      RxList.generate(3, (index) => ListseventyeightItemModel());

  RxList<K1ItemModel> k1ItemList = RxList.generate(4, (index) => K1ItemModel());
}
