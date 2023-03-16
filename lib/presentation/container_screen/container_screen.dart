import 'controller/container_controller.dart';
import 'package:flutter/material.dart';
import 'package:listenmebaby71_s_application14/core/app_export.dart';
import 'package:listenmebaby71_s_application14/presentation/k19_page/k19_page.dart';
import 'package:listenmebaby71_s_application14/presentation/k4_page/k4_page.dart';
import 'package:listenmebaby71_s_application14/widgets/custom_bottom_bar.dart';

class ContainerScreen extends GetWidget<ContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.k4Page,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar:
                CustomBottomBar(/*onChanged: (BottomBarEnum type) {}*/)));
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.k4Page:
        return K4Page();
      case AppRoutes.k19Page:
        return K19Page();
      default:
        return K4Page();
    }
  }
}
