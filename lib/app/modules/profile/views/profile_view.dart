import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () => Get.back(),
              icon: Icon(Icons.arrow_back),
            ),
          ),
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${_.user.firstName} ${_.user.lastName}',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 10.0),
                CupertinoTextField(
                  onChanged: _.onInputTextChange,
                ),
                SizedBox(height: 10.0),
                CupertinoButton(
                  child: Text('Aceptar'),
                  onPressed: _.goToBackWithData,
                  
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
