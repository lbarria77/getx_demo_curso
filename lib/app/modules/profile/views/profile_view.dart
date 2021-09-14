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
          body: Center(
            child: Text('${_.user.firstName} ${_.user.lastName}',
              style: TextStyle(fontSize: 20),
            ),
          ),
        );
      },
    );
  }
}
