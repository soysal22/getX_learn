import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:http_get_use/core/constants/constants.dart';
import 'package:http_get_use/core/service/todos_service.dart';
import 'package:http_get_use/view/obx.dart';

void main() {
  // ignore: prefer_const_constructors
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Constants.colorTransparent));
  Get.lazyPut(() => TodosApiService());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Obxxxx(),
    );
  }
}
