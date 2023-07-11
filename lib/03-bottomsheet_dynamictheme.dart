import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class BottomSheetDynamicTheme extends StatefulWidget {
  const BottomSheetDynamicTheme({Key? key}) : super(key: key);

  @override
  State<BottomSheetDynamicTheme> createState() =>
      _BottomSheetDynamicThemeState();
}

class _BottomSheetDynamicThemeState extends State<BottomSheetDynamicTheme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              child: Text("Bottom Sheet"),
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    child: Wrap(
                      children: [
                        ListTile(
                          leading: Icon(Icons.wb_sunny_outlined),
                          title: Text('Light Theme'),
                          onTap: () {
                            Get.changeTheme(
                              ThemeData.light(),
                            );
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.wb_sunny),
                          title: Text('Dark Theme'),
                          onTap: () {
                            Get.changeTheme(
                              ThemeData.dark(),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  barrierColor: Colors.greenAccent.shade100,
                  backgroundColor: Colors.purpleAccent,
                  isDismissible: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(
                        color: Colors.white,
                        style: BorderStyle.solid,
                        width: 2.0),
                  ),
                  enableDrag: true,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
