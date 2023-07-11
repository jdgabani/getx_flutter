import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowDialog extends StatefulWidget {
  const ShowDialog({Key? key}) : super(key: key);

  @override
  State<ShowDialog> createState() => _ShowDialogState();
}

class _ShowDialogState extends State<ShowDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              child: const Text("Show Dialog"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
              onPressed: () {
                //Get.defaultDialog
                Get.defaultDialog(
                  title: "Order Processing",
                  titleStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                  middleText: "This is middle text",
                  middleTextStyle:
                      TextStyle(fontSize: 20, color: Colors.white70),
                  backgroundColor: Colors.orange,
                  radius: 30,

                  // To customize the middle text
                  content: Row(
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Text(
                          "Data Loading...",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                    ],
                  ),
                  //Default cancel and confirm action
                  // textCancel: "Cancel",
                  // cancelTextColor: Colors.white,
                  // textConfirm: "Confirm",
                  // confirmTextColor: Colors.white,
                  // onCancel: () {
                  //   Get.back();
                  // },
                  // onConfirm: () {},
                  // //color for default cancel and confirm button
                  // buttonColor: Colors.black54,

                  //Customize the default cancel and confirm
                  //Override the default cancel and confirm
                  // cancel: Text(
                  //   "Cancels",
                  //   style: TextStyle(color: Colors.white),
                  // ),
                  // confirm: Text(
                  //   "Confirms",
                  //   style: TextStyle(color: Colors.white),
                  // ),
                  actions: [
                    ElevatedButton(
                      child: Text("Cancel"),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                    ElevatedButton(
                      child: Text("Confirm"),
                      onPressed: () {},
                    )
                  ],
                  barrierDismissible: false,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
