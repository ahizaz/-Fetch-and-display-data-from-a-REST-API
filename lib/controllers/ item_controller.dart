import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/item_model.dart';

class ItemController extends GetxController {
  var itemList = <Item>[].obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    fetchItems();
    super.onInit();
  }

  void fetchItems() async {
    isLoading(true);
    try {
      var uri ='https://jsonplaceholder.typicode.com/posts';
       var response = await http.get(Uri.parse(uri)); //api hit here
      if (response.statusCode == 200) {
        var data = json.decode(response.body) as List;//code decode here
        itemList.value = data.map((json) => Item.fromJson(json)).toList();
      }
    } catch (e) {
      print("$e");
    } finally {
      isLoading(false);
    }
  }
}