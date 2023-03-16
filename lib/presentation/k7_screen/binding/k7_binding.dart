import '../controller/k7_controller.dart';
import 'package:get/get.dart';

class K7Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K7Controller());
  }
}
