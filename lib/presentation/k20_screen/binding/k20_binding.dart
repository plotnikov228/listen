import '../controller/k20_controller.dart';
import 'package:get/get.dart';

class K20Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K20Controller());
  }
}
