import 'package:get/get.dart';
import 'listthreehundredthirtythree_item_model.dart';
import 'listthreehundredforty_item_model.dart';

class K16Model {
  RxList<ListthreehundredthirtythreeItemModel>
      listthreehundredthirtythreeItemList =
      RxList.generate(3, (index) => ListthreehundredthirtythreeItemModel());

  RxList<ListthreehundredfortyItemModel> listthreehundredfortyItemList =
      RxList.generate(3, (index) => ListthreehundredfortyItemModel());
}
