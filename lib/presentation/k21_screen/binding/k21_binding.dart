import '../controller/k21_controller.dart';
import 'package:get/get.dart';

class K21Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K21Controller());
  }
}
