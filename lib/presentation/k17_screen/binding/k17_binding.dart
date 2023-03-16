import '../controller/k17_controller.dart';
import 'package:get/get.dart';

class K17Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K17Controller());
  }
}
