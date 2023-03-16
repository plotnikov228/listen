import '../controller/k11_controller.dart';
import 'package:get/get.dart';

class K11Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K11Controller());
  }
}
