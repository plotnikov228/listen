import '../controller/k22_controller.dart';
import 'package:get/get.dart';

class K22Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K22Controller());
  }
}
