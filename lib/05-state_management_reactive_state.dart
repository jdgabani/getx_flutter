import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReactiveStateManager extends StatefulWidget {
  const ReactiveStateManager({Key? key}) : super(key: key);

  @override
  State<ReactiveStateManager> createState() => _ReactiveStateManagerState();
}

class _ReactiveStateManagerState extends State<ReactiveStateManager> {
  var count = 0.obs;

  void increment() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State Management"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Obx(
              () => Text(
                "Count value is $count",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {
              increment();
            },
            child: Text(
              "Increment",
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
          ),
        ],
      ),
    );
  }
}
