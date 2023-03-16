import '../controller/k8_controller.dart';
import 'package:get/get.dart';

class K8Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K8Controller());
  }
}
