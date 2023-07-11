import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '07-controller_mycart.dart';

class TotalPagesMyCart extends StatefulWidget {
  const TotalPagesMyCart({Key? key}) : super(key: key);

  @override
  State<TotalPagesMyCart> createState() => _TotalPagesMyCartState();
}

class _TotalPagesMyCartState extends State<TotalPagesMyCart> {
  final ControllerMyCart j = Get.put(ControllerMyCart());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade900,
        title: Text("Cart Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Total items",
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue.shade900,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Obx(() => Text(
                  "${j.sum.toString()}",
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blueGrey,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  backgroundColor: Colors.indigo,
                ),
                onPressed: () {
                  Get.back();
                },
                child: Text(
                  "Go Back",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
