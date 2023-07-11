import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Showmassage extends StatefulWidget {
  const Showmassage({Key? key}) : super(key: key);

  @override
  State<Showmassage> createState() => _ShowmassageState();
}

class _ShowmassageState extends State<Showmassage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbar"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              child: const Text("Show Snackbar"),
              onPressed: () {
                Get.snackbar(
                  "SnapChat - Viraj Asodariya 😇 ",
                  icon: Icon(
                    Icons.snapchat_outlined,
                    color: Colors.black,
                    size: 30,
                  ),
                  "Sent you a Snap",
                  snackPosition: SnackPosition.TOP,
                  duration: Duration(seconds: 3),
                  // overlayBlur: 5,
                  reverseAnimationCurve: Curves.fastLinearToSlowEaseIn,
                  snackbarStatus: (val) {
                    print(val);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
