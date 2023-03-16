import '../controller/container_controller.dart';
import 'package:get/get.dart';

class ContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContainerController());
  }
}
