import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class P2RouteNavigation extends StatefulWidget {
  const P2RouteNavigation({Key? key}) : super(key: key);

  @override
  State<P2RouteNavigation> createState() => _P2RouteNavigationState();
}

class _P2RouteNavigationState extends State<P2RouteNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "This is Home Screen",
              style: TextStyle(
                color: Colors.pink,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Next Screen",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: Text(
              "Back",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(height: 13),
          Text(
            "${Get.arguments}",
            style: TextStyle(
              color: Colors.pink,
              fontSize: 22,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}
