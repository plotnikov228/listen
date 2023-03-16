import '../controller/k12_controller.dart';
import 'package:get/get.dart';

class K12Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K12Controller());
  }
}
