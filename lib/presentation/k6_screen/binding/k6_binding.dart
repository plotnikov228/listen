import '../controller/k6_controller.dart';
import 'package:get/get.dart';

class K6Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K6Controller());
  }
}
