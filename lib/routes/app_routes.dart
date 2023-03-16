import 'package:listenmebaby71_s_application14/presentation/k0_screen/k0_screen.dart';
import 'package:listenmebaby71_s_application14/presentation/k0_screen/binding/k0_binding.dart';
import 'package:listenmebaby71_s_application14/presentation/k19_page/bindings/k19_bindings.dart';
import 'package:listenmebaby71_s_application14/presentation/k19_page/k19_page.dart';
import 'package:listenmebaby71_s_application14/presentation/k1_screen/k1_screen.dart';
import 'package:listenmebaby71_s_application14/presentation/k1_screen/binding/k1_binding.dart';
import 'package:listenmebaby71_s_application14/presentation/k2_screen/k2_screen.dart';
import 'package:listenmebaby71_s_application14/presentation/k2_screen/binding/k2_binding.dart';
import 'package:listenmebaby71_s_application14/presentation/k3_screen/k3_screen.dart';
import 'package:listenmebaby71_s_application14/presentation/k3_screen/binding/k3_binding.dart';
import 'package:listenmebaby71_s_application14/presentation/container_screen/container_screen.dart';
import 'package:listenmebaby71_s_application14/presentation/container_screen/binding/container_binding.dart';
import 'package:listenmebaby71_s_application14/presentation/k4_page/k4_page.dart';
import 'package:listenmebaby71_s_application14/presentation/k6_screen/k6_screen.dart';
import 'package:listenmebaby71_s_application14/presentation/k6_screen/binding/k6_binding.dart';
import 'package:listenmebaby71_s_application14/presentation/k7_screen/k7_screen.dart';
import 'package:listenmebaby71_s_application14/presentation/k7_screen/binding/k7_binding.dart';
import 'package:listenmebaby71_s_application14/presentation/k8_screen/k8_screen.dart';
import 'package:listenmebaby71_s_application14/presentation/k8_screen/binding/k8_binding.dart';
import 'package:listenmebaby71_s_application14/presentation/k9_screen/k9_screen.dart';
import 'package:listenmebaby71_s_application14/presentation/k9_screen/binding/k9_binding.dart';
import 'package:listenmebaby71_s_application14/presentation/k10_screen/k10_screen.dart';
import 'package:listenmebaby71_s_application14/presentation/k10_screen/binding/k10_binding.dart';
import 'package:listenmebaby71_s_application14/presentation/k11_screen/k11_screen.dart';
import 'package:listenmebaby71_s_application14/presentation/k11_screen/binding/k11_binding.dart';
import 'package:listenmebaby71_s_application14/presentation/k12_screen/k12_screen.dart';
import 'package:listenmebaby71_s_application14/presentation/k12_screen/binding/k12_binding.dart';
import 'package:listenmebaby71_s_application14/presentation/k14_screen/k14_screen.dart';
import 'package:listenmebaby71_s_application14/presentation/k14_screen/binding/k14_binding.dart';
import 'package:listenmebaby71_s_application14/presentation/k15_screen/k15_screen.dart';
import 'package:listenmebaby71_s_application14/presentation/k15_screen/binding/k15_binding.dart';
import 'package:listenmebaby71_s_application14/presentation/k16_screen/k16_screen.dart';
import 'package:listenmebaby71_s_application14/presentation/k16_screen/binding/k16_binding.dart';
import 'package:listenmebaby71_s_application14/presentation/k17_screen/k17_screen.dart';
import 'package:listenmebaby71_s_application14/presentation/k17_screen/binding/k17_binding.dart';
import 'package:listenmebaby71_s_application14/presentation/k20_screen/k20_screen.dart';
import 'package:listenmebaby71_s_application14/presentation/k20_screen/binding/k20_binding.dart';
import 'package:listenmebaby71_s_application14/presentation/k21_screen/k21_screen.dart';
import 'package:listenmebaby71_s_application14/presentation/k21_screen/binding/k21_binding.dart';
import 'package:listenmebaby71_s_application14/presentation/k22_screen/k22_screen.dart';
import 'package:listenmebaby71_s_application14/presentation/k22_screen/binding/k22_binding.dart';
import 'package:listenmebaby71_s_application14/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:listenmebaby71_s_application14/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String k0Screen = '/k0_screen';

  static const String k1Screen = '/k1_screen';

  static const String k2Screen = '/k2_screen';

  static const String k3Screen = '/k3_screen';

  static const String k4Page = '/k4_page';

  static const String containerScreen = '/container_screen';

  static const String k6Screen = '/k6_screen';

  static const String k7Screen = '/k7_screen';

  static const String k8Screen = '/k8_screen';

  static const String k9Screen = '/k9_screen';

  static const String k10Screen = '/k10_screen';

  static const String k11Screen = '/k11_screen';

  static const String k12Screen = '/k12_screen';

  static const String k14Screen = '/k14_screen';

  static const String k15Screen = '/k15_screen';

  static const String k16Screen = '/k16_screen';

  static const String k17Screen = '/k17_screen';

  static const String k19Page = '/k19_page';

  static const String k20Screen = '/k20_screen';

  static const String k21Screen = '/k21_screen';

  static const String k22Screen = '/k22_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: k0Screen,
      page: () => K0Screen(),
      bindings: [
        K0Binding(),
      ],
    ),
    GetPage(
      name: k1Screen,
      page: () => K1Screen(),
      bindings: [
        K1Binding(),
      ],
    ),
    GetPage(
      name: k2Screen,
      page: () => K2Screen(),
      bindings: [
        K2Binding(),
      ],
    ),
    GetPage(
      name: k3Screen,
      page: () => K3Screen(),
      bindings: [
        K3Binding(),
      ],
    ),
    GetPage(
      name: k4Page,
      page: () => K4Page(),
      bindings: [
        K3Binding(),
      ],
    ),
    GetPage(
      name: containerScreen,
      page: () => ContainerScreen(),
      bindings: [
        ContainerBinding(),
      ],
    ),
    GetPage(
      name: k6Screen,
      page: () => K6Screen(),
      bindings: [
        K6Binding(),
      ],
    ),
    GetPage(
      name: k7Screen,
      page: () => K7Screen(),
      bindings: [
        K7Binding(),
      ],
    ),
    GetPage(
      name: k8Screen,
      page: () => K8Screen(),
      bindings: [
        K8Binding(),
      ],
    ),
    GetPage(
      name: k9Screen,
      page: () => K9Screen(),
      bindings: [
        K9Binding(),
      ],
    ),
    GetPage(
      name: k10Screen,
      page: () => K10Screen(),
      bindings: [
        K10Binding(),
      ],
    ),
    GetPage(
      name: k11Screen,
      page: () => K11Screen(),
      bindings: [
        K11Binding(),
      ],
    ),
    GetPage(
      name: k12Screen,
      page: () => K12Screen(),
      bindings: [
        K12Binding(),
      ],
    ),
    GetPage(
      name: k14Screen,
      page: () => K14Screen(),
      bindings: [
        K14Binding(),
      ],
    ),
    GetPage(
      name: k15Screen,
      page: () => K15Screen(),
      bindings: [
        K15Binding(),
      ],
    ),
    GetPage(
      name: k16Screen,
      page: () => K16Screen(),
      bindings: [
        K16Binding(),
      ],
    ),
    GetPage(
      name: k17Screen,
      page: () => K17Screen(),
      bindings: [
        K17Binding(),
      ],
    ),
    GetPage(
      name: k19Page,
      page: () => K19Page(),
      bindings: [
        K19Binding(),
      ],
    ),
    GetPage(
      name: k20Screen,
      page: () => K20Screen(),
      bindings: [
        K20Binding(),
      ],
    ),
    GetPage(
      name: k21Screen,
      page: () => K21Screen(),
      bindings: [
        K21Binding(),
      ],
    ),
    GetPage(
      name: k22Screen,
      page: () => K22Screen(),
      bindings: [
        K22Binding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => K0Screen(),
      bindings: [
        K0Binding(),
      ],
    )
  ];
}
