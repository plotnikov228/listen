import 'package:listenmebaby71_s_application14/core/app_export.dart';
import 'package:listenmebaby71_s_application14/presentation/k18_bottomsheet/models/k18_model.dart';

class K18Controller extends GetxController {
  Rx<K18Model> k18ModelObj = K18Model().obs;

  RxBool checkbox = false.obs;

  RxString radioGroup = "".obs;

  RxString radioGroup1 = "".obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
