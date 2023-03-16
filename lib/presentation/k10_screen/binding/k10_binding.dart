import '../controller/k10_controller.dart';
import 'package:get/get.dart';

class K10Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K10Controller());
  }
}
