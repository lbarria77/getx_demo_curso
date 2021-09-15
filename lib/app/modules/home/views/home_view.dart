import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_demo_curso/app/data/controllers/global_controller.dart';
import 'package:getx_demo_curso/app/modules/home/widgets/home_label.dart';
import 'package:getx_demo_curso/app/modules/home/widgets/home_list.dart';
import 'package:getx_demo_curso/app/widgets/product_list.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            actions: [
              GetBuilder<GlobalController>(
                id: 'favorites',
                builder: (_) => TextButton(
                  child: Text(
                    'Favoritos (${_.favorites.length})',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
          body: Center(
            // child: HomeList(),
            child: ProductList(),
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
