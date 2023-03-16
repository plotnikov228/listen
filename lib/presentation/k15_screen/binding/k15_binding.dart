import '../controller/k15_controller.dart';
import 'package:get/get.dart';

class K15Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K15Controller());
  }
}
