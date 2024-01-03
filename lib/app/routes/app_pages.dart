import 'package:get/get.dart';

import '../modules/design_empat/bindings/design_empat_binding.dart';
import '../modules/design_empat/views/design_empat_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/introduction/bindings/introduction_binding.dart';
import '../modules/introduction/views/introduction_view.dart';
import '../modules/list_box/bindings/list_box_binding.dart';
import '../modules/list_box/views/list_box_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.INTRODUCTION,
      page: () => IntroductionView(),
      binding: IntroductionBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.LIST_BOX,
      page: () => ListBoxView(),
      binding: ListBoxBinding(),
    ),
    GetPage(
      name: _Paths.DESIGN_EMPAT,
      page: () => DesignEmpatView(),
      binding: DesignEmpatBinding(),
    ),
  ];
}
