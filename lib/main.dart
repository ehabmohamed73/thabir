import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:teacher_rating/binding.dart';
import 'package:teacher_rating/core/services/services.dart';
import 'package:teacher_rating/roots.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await intialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Cairo"),
      initialBinding: MyBinding(),
      getPages: routes,
    );
  }
}
