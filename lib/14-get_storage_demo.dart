import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';

import '09-language_HomePage.dart';

class GetStorageDemo extends StatefulWidget {
  const GetStorageDemo({Key? key}) : super(key: key);

  @override
  State<GetStorageDemo> createState() => _GetStorageDemoState();
}

class _GetStorageDemoState extends State<GetStorageDemo> {
  final box = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                // await box.write('username', 'J.D Gabani');
                await box.write('userid', '122436');
                Get.to(HomePage(
                  userID: '',
                ));
              },
              child: const Text('Add'),
            ),
            ElevatedButton(
              onPressed: () async {
                // print('${box.read('username')}');
                print('${box.read('userid')}');
              },
              child: const Text('get'),
            ),
            ElevatedButton(
              onPressed: () async {
                await box.remove('userid');
              },
              child: const Text('remove'),
            ),
            ElevatedButton(
              onPressed: () async {
                await box.erase();
              },
              child: const Text('Remove All'),
            ),
          ],
        ),
      ),
    );
  }
}
