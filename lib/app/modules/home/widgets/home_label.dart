import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo_curso/app/modules/home/controllers/home_controller.dart';

class HomeLabel extends StatelessWidget {
  const HomeLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        id: 'text',
        builder: (_) => Text(
              _.count.toString(),
              style: TextStyle(fontSize: 20),
            ));
  }
}
