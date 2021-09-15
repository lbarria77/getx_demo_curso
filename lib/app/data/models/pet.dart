import 'package:get/get.dart';

class RxPet {
  final RxString name;
  final RxInt edad;

  RxPet({
    required this.name,
    required this.edad,
  });
}

class Pet {
  
  RxPet? rx;
  Pet({
    required String name,
    required int edad,
  }) {
    this.rx = RxPet(name: name.obs, edad: edad.obs);
  }

  String get name => this.rx!.name.value;
  int get edad => this.rx!.edad.value;

  set name(String value) {
    this.rx!.name.value = value;
  }

  set edad(int value) {
    this.rx!.edad.value = value;
  }

  // Pet copyWith({
  //   String? name,
  //   int? edad,
  // }) {
  //   return Pet(name: name ?? this.name, edad: edad ?? this.edad);
  // }
}
