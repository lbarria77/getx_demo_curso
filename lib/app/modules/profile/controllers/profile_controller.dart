import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo_curso/app/data/models/user.dart';
import 'package:getx_demo_curso/app/modules/profile/views/profile_view.dart';

class ProfileController extends GetxController {
  //TODO: Implement ProfileController

  late User _user;
  User get user => _user;

  String _inputText = '';

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    print('Get.arguments ${Get.arguments}');
    this._user = Get.arguments as User;
  }

  void onInputTextChange(String text) {
    this._inputText = text;
  }

  void goToBackWithData() {
    if (this._inputText.trim().length > 0) {
      Get.back(result: this._inputText);
    } else {
      
      Get.dialog(AlertDialog(
        title: Text('ERROR'),
        content: Text('Ingrese un valor valido'),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: Text('Aceptar'),
          )
        ],
      ));
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
