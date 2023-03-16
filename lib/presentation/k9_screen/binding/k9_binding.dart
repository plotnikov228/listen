import '../controller/k9_controller.dart';
import 'package:get/get.dart';

class K9Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K9Controller());
  }
}
