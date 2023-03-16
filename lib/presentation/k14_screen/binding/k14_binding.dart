import '../controller/k14_controller.dart';
import 'package:get/get.dart';

class K14Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K14Controller());
  }
}
