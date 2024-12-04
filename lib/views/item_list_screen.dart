import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/ item_controller.dart';


class ItemListScreen extends StatelessWidget {
  final ItemController controller = Get.put(ItemController()); // Initialize the controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List'),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator()); // Show loading indicator
        }
        return ListView.builder(
          itemCount: controller.itemList.length,
          itemBuilder: (context, index) {
            final item = controller.itemList[index];
            return ListTile(
              leading: Text(item.id.toString()),
              title: Text(item.title),
            );
          },
        );
      }),
    );
  }
}