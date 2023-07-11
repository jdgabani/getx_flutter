import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_flutter/15%20name_add_task.dart';
import '03-bottomsheet_dynamictheme.dart';
import '09-language_HomePage.dart';
import '10-language_localestring.dart';
import '14-get_storage_demo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final box = GetStorage();
    print('USERID ${box.read('userId')}');
    return GetMaterialApp(
        translations: LocalString(),
        locale: Locale('en', 'US'),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home:NameAddTask2()
        // box.read('userId') == null
        //     ? GetStorageDemo()
        //     : HomePage(
        //         userID: box.read('userid'),
        //       ),
    );
  }
}
