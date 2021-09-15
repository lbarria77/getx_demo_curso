import 'dart:async';

import 'package:get/get.dart';
import 'package:getx_demo_curso/app/data/controllers/socket_client.dart';
import 'package:getx_demo_curso/app/data/models/pet.dart';

class ReactiveController extends GetxController {
  //TODO: Implement ReactiveController

  RxInt counter = 0.obs;
  RxString currentDate = ''.obs;

  RxList items = <String>[].obs; 
  RxMap mapItems = <String, dynamic>{}.obs;

  Pet myPet = Pet(name: 'Zeus', edad: 8);

  late StreamSubscription<String> _subscription;

  @override
  void onInit() {
    super.onInit();
    final SocketClientController socketClientController = Get.find<SocketClientController>();
    _subscription = socketClientController.message.listen((data) {
      print('Message:::: $data');
     });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    _subscription.cancel();
  }
  void increment() {
    counter.value++;
    
  }

  void getDate() {
    currentDate.value = DateTime.now().toString();
  }

  void addItem() {
    items.add(DateTime.now().toString());
  }

  void addMapItem() {
    final String key = DateTime.now().toString();
    mapItems.addIf(true, key, key);
  }

  void removeItems(int index) {
    items.removeAt(index);
  }

  void removeMapItems(String key) {
    mapItems.remove(key);
  }

  void setPetAge(int edad) {
    myPet.edad = edad;
    // myPet.value = myPet.value.copyWith(edad: edad);
  }

}
