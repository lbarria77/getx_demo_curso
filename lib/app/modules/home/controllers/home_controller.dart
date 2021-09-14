import 'package:get/get.dart';
import 'package:getx_demo_curso/app/data/api/users_api.dart';
import 'package:getx_demo_curso/app/data/models/user.dart';
import 'package:getx_demo_curso/app/modules/profile/views/profile_view.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  int _count = 0;
  List<User> _users = [];
  bool _loading = true;

  int get count => _count;
  List<User> get users => _users;
  bool get loading => _loading;

  // Es como un init State
  @override
  void onInit() {
    super.onInit();
    print('Same as InitState');
  }

  @override
  void onReady() {
    super.onReady();
    print('OnReady');
    this.loadUsers();
  }

  Future<void> loadUsers() async {
    final data = await UsersAPI.instance.getUsers(1);
    this._users = data;
    this._loading = false;
    update(['users']);
  }

  @override
  void onClose() {}
  void increment() {
    this._count++;
    update(['text']);
  }

  showUSerProfile(User user) {
    Get.to(() => ProfileView(), arguments: user,
    );
  }
}
