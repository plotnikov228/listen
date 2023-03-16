import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:listenmebaby71_s_application14/presentation/k19_page/controller/k19_controller.dart';

class K19Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K19Controller());
  }
}