import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_flutter/04-P2-Route_Navigation.dart';

class P1RouteNavigation extends StatefulWidget {
  const P1RouteNavigation({Key? key}) : super(key: key);

  @override
  State<P1RouteNavigation> createState() => _P1RouteNavigationState();
}

class _P1RouteNavigationState extends State<P1RouteNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              child: Text("Go to Home"),
              onPressed: () {
                Get.to(
                  P2RouteNavigation(),
                  fullscreenDialog: true,
                  transition: Transition.zoom,
                  // Duration for transition animation
                  // duration: Duration(milliseconds: 4000),
                  //Curve Animation
                  curve: Curves.bounceInOut,
                  arguments: "J.D Gabani(Flutter Devloper)",
                );
                // Go to Home Screen but no option to return to previous screen
                // Get.off(P2RouteNavigation());
              },
            ),
          ),
        ],
      ),
    );
  }
}
