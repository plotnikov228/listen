import '../controller/k16_controller.dart';
import 'package:get/get.dart';

class K16Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K16Controller());
  }
}
