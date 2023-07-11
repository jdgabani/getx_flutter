import 'package:get/get.dart';
import 'package:getx_flutter/06-upper_stm_using_obx.dart';

class MyController extends GetxController {
  // var student = Student();
  // void convertToUpperCase() {
  //   student.name.value = student.name.value.toUpperCase();
  // }
  var student = Student(name: "Jd", age: 27).obs;

  void convertUpperCase() {
    student.update((student) {
      student!.name = student.name.toString().toUpperCase();
    });
  }
}
