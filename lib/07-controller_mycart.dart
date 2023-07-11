import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ControllerMyCart extends GetxController {
  var books = 0.obs;
  var pens = 0.obs;
  int get sum => books.value + pens.value;
  increment() {
    books.value++;
  }

  decrement() {
    if (books.value <= 0) {
      Get.snackbar(
        backgroundColor: Colors.red.shade900.withOpacity(0.60),
        "Buyin Books",
        "Can not be less than zero",
        colorText: Colors.white,
        icon: Icon(
          Icons.book_outlined,
          color: Colors.white,
        ),
        barBlur: 20,
        isDismissible: true,
        duration: Duration(seconds: 3),
      );
    } else {
      books.value--;
    }
  }

  incrementPens() {
    pens.value++;
  }

  decrementPens() {
    if (pens.value <= 0) {
      Get.snackbar(
        backgroundColor: Colors.red.shade900.withOpacity(0.60),
        "Buyin Pens",
        "Can not be less than zero",
        colorText: Colors.white,
        icon: Icon(
          Icons.edit,
          color: Colors.white,
        ),
        barBlur: 20,
        isDismissible: true,
        duration: Duration(seconds: 3),
      );
    } else {
      pens.value--;
    }
  }
}
