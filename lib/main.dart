import 'package:assignment1/views/item_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      home: ItemListScreen(),
    );
  }
}