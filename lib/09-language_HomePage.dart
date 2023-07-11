import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required userID}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List locale = [
    {
      'name': 'English',
      'locale': Locale('en', 'US'),
    },
    {
      'name': 'हिंदी',
      'locale': Locale('hi', 'IN'),
    },
    {
      'name': 'ગુજરાતી',
      'locale': Locale('gu', 'IN'),
    },
    {
      'name': 'ಕನ್ನಡ',
      'locale': Locale('kn', 'IN'),
    },
  ];

  updatelanguage(locale) {
    Get.back();
    Get.updateLocale(locale);
  }

  builddialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (builder) {
          return AlertDialog(
            title: Text('Choose a language'),
            content: Container(
              width: double.maxFinite,
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        child: Text(locale[index]['name']),
                        onTap: () {
                          // print(locale[index]['hello']);
                          updatelanguage(locale[index]['locale']);
                        },
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Colors.blue,
                    );
                  },
                  itemCount: locale.length),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'.tr),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'hello'.tr,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.underline),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'message'.tr,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue.shade800),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              textAlign: TextAlign.center,
              'des'.tr,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue.shade900,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 14,
            ),
            ElevatedButton(
              onPressed: () {
                builddialog(context);
              },
              child: Text("changelang".tr),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      var locale = Locale('en', 'US');
                      Get.updateLocale(locale);
                    },
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                    child: Text("English")),
                ElevatedButton(
                    onPressed: () {
                      var locale = Locale('hi', 'IN');
                      Get.updateLocale(locale);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade900),
                    child: Text("Hindi")),
                ElevatedButton(
                    onPressed: () {
                      var locale = Locale('gu', 'IN');
                      Get.updateLocale(locale);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange.shade900),
                    child: Text("Gujarati")),
                ElevatedButton(
                    onPressed: () {
                      var locale = Locale('kn', 'IN');
                      Get.updateLocale(locale);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey),
                    child: Text("Kannada")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
