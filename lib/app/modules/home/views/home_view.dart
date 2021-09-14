import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_demo_curso/app/modules/home/widgets/home_label.dart';
import 'package:getx_demo_curso/app/modules/home/widgets/home_list.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (_) {        
        return Scaffold(
          body: Center(
            child: HomeList(),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              _.increment();
            },
          ),
        );
      },
    );
  }
}
