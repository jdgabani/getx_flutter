import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/12-my_controller.dart';

class CustomClass extends StatefulWidget {
  const CustomClass({Key? key}) : super(key: key);

  @override
  State<CustomClass> createState() => _CustomClassState();
}

class _CustomClassState extends State<CustomClass> {
  // var student = Student();
  final student = Student(name: "jd", age: 27).obs;
  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("State management"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Obx(
              () => Text(
                "Name is ${myController.student.value.name}",
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {
              myController.convertUpperCase();
            },
            child: Text("Upper"),
          ),
        ],
      ),
    );
  }
}

class Student {
  var name;
  var age;
  Student({this.name, this.age});
}
