import 'package:get/get.dart';

import '../controllers/reactive_controller.dart';

class ReactiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReactiveController>(
      () => ReactiveController(),
    );
  }
}
