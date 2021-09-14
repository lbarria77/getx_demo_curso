import 'package:get/get.dart';
import 'package:getx_demo_curso/app/routes/app_pages.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    Future.delayed(Duration(seconds: 3), () {
      Get.offNamed(Routes.HOME);
    });
    
  }

  @override
  void onClose() {
    print('Same as Dispose');
  }
  void increment() => count.value++;
}
