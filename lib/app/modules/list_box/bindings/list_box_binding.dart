import 'package:get/get.dart';

import '../controllers/list_box_controller.dart';

class ListBoxBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListBoxController>(
      () => ListBoxController(),
    );
  }
}
