import 'dart:async';

import 'package:faker/faker.dart';
import 'package:get/get.dart';

class SocketClientController extends GetxController {
  RxString _message = ''.obs;
  RxString _searchText = ''.obs;
  RxInt _counter = 0.obs;

  RxString get message => _message;
  RxInt get counter => _counter;


  Timer? _timer;
  Timer? _timerCounter;
  final _faker = Faker();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _init();
  }  

  _init() {

    // Worker

    // ever(_searchText, (_) {
    //   // print('_counter has been change ${_counter.value}');
    //   print('lalalalla');
    // });

    // ever(_counter, (_) {
    //   print('_counter has been change ${_counter.value}');
    // });    

    // once(_counter, (_) {
    //   print('_counter has been change ${_counter.value}');
    // });

    // debounce(_searchText, (_) {
    //   print(_searchText.value);
    // }, time: Duration(milliseconds: 500));

    interval(_searchText, (_) {
      print(_searchText.value);
    }, time: Duration(milliseconds: 500));

    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      _message.value = _faker.lorem.sentence();
    });

    // _timerCounter = Timer.periodic(Duration(seconds: 1), (timer) {
    //   _counter.value++;
    // });
  }

  @override
  void onClose() {
    if (Timer != null) {
      _timer!.cancel();
    }

    if (Timer != null) {
      // _timerCounter!.cancel();
    }
    super.onClose();
  }

  void setSearchText(String text) {
    _searchText.value = text;
  }
}
