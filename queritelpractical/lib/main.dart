import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/theme.dart';
import 'initial.binding.dart';
import 'ui/pages/home/home.view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // InitialBinding().dependencies();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightThemeData,
      darkTheme: MyTheme.darkThemeData,
      title: "QueritelPractical",
      initialBinding: InitialBinding(),
      // home: LoginView(),
      // home: HomeView(),
      // home: AddProductView(),
      home: HomeView(),
    ),
  );
}
