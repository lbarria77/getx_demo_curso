import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_demo_curso/app/data/controllers/socket_client.dart';

import '../controllers/reactive_controller.dart';

class ReactiveView extends GetView<ReactiveController> {
  @override
  Widget build(BuildContext context) {
    final socketController = Get.find<SocketClientController>();
    return GetBuilder<ReactiveController>(
      init: ReactiveController(),
      builder: (_) {
        print("Reactive");
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Obx(
              //   () => Center(
              //     child: Text('Edad ${_.myPet.edad}'),
              //   ),
              // ),
              CupertinoTextField(
                onChanged: (text) {
                  socketController.setSearchText(text);
                },
              ),
              Obx(
                () => Center(
                  child: Text(socketController.message.value),
                ),
              ),
              Obx(
                () => Center(
                  child: Text(socketController.counter.value.toString()),
                ),
              ),
              TextButton(
                child: Text('Cambiar Edad'),
                onPressed: () {
                  _.setPetAge(_.myPet.edad + 1);
                },
              ),
            ],
          ),

          // body: Obx(

          // List Rx
          // () => ListView.builder(
          //   itemCount: _.items.length,
          //   itemBuilder: (c__, index) {
          //     final String text = _.items[index];
          //     return ListTile(
          //       title: Text(text),
          //       trailing: IconButton(
          //         icon: Icon(Icons.delete),
          //         onPressed: () {
          //           _.removeItems(index);
          //         },
          //       ),
          //     );
          //   },
          // ),

          // Map Rx
          // () => ListView(
          //       children: _.mapItems.values
          //           .map((e) => ListTile(
          //                 title: Text(e),
          //                 trailing: IconButton(
          //                   icon: Icon(Icons.delete),
          //                   onPressed: () {
          //                     _.removeMapItems(e);
          //                   },
          //                 ),
          //               ))
          //           .toList(),
          //     )),
          // floatingActionButton: Row(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: [
          //     FloatingActionButton(
          //         heroTag: 'add',
          //         child: Icon(Icons.add),
          //         onPressed: () {
          //           // _.addItem();
          //           _.addMapItem();
          //         }),
          //     SizedBox(width: 10.0),
          //     FloatingActionButton(
          //         heroTag: 'date',
          //         child: Icon(Icons.calendar_today),
          //         onPressed: () {
          //           _.getDate();
          //         }),
          //   ],
          // );
        );
      },
    );
  }
}
