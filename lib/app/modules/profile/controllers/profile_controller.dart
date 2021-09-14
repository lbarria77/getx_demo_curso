import 'package:get/get.dart';
import 'package:getx_demo_curso/app/data/models/user.dart';
import 'package:getx_demo_curso/app/modules/profile/views/profile_view.dart';

class ProfileController extends GetxController {
  //TODO: Implement ProfileController

  late User _user;
  User get user => _user;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    print('Get.arguments ${Get.arguments}');
    this._user = Get.arguments as User;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  
}
