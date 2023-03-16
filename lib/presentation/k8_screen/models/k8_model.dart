import 'package:get/get.dart';
import 'listonehundredeightyone_item_model.dart';
import 'listonehundredeightysix_item_model.dart';
import 'gridonehundredninetyfour_item_model.dart';

class K8Model {
  RxList<ListonehundredeightyoneItemModel> listonehundredeightyoneItemList =
      RxList.generate(3, (index) => ListonehundredeightyoneItemModel());

  RxList<ListonehundredeightysixItemModel> listonehundredeightysixItemList =
      RxList.generate(3, (index) => ListonehundredeightysixItemModel());

  RxList<GridonehundredninetyfourItemModel> gridonehundredninetyfourItemList =
      RxList.generate(6, (index) => GridonehundredninetyfourItemModel());
}
