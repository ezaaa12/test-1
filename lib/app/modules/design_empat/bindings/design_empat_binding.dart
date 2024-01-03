import 'package:get/get.dart';

import '../controllers/design_empat_controller.dart';

class DesignEmpatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DesignEmpatController>(
      () => DesignEmpatController(),
    );
  }
}
