import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo_curso/app/data/controllers/socket_client.dart';

import 'app/routes/app_pages.dart';
import 'package:getx_demo_curso/app/data/controllers/global_controller.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(GlobalController());
    Get.put(SocketClientController());
    return GetMaterialApp(      
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}

