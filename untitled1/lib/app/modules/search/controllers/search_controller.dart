import 'dart:convert';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;
import '../../../data/models/response/model.dart';

class searchcontroller extends GetxController {
  RxList<Model> todos = <Model>[].obs;
  RxList<Model> search = <Model>[].obs;

  @override
  void onInit() {
    super.onInit();
    data();
  }

  void data() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    if (response.statusCode == 200) {
      final List<dynamic> responseData = json.decode(response.body);
      final List<Model> data =
          responseData.map((json) => Model.fromJson(json)).toList();
      todos.assignAll(data);
      search.assignAll(data);
    }
  }

  void Search(String searchdata) {
    var searchList = todos.where((todo) {
      var lowerData = searchdata;
      return todo.title.toLowerCase().contains(lowerData) ||
          todo.id.toString().contains(lowerData) ||
          todo.userId.toString().contains(lowerData) ||
          todo.completed.toString().contains(lowerData);
    }).toList();
    search.assignAll(searchList);
  }
}
// void Search(String data) {
//   final searchList = todos.where((todo) {
//     return todo.title.toLowerCase().contains(data.toLowerCase());
//   }).toList();
//   search.assignAll(searchList);
// }
//  for single it is used  //
// void data() async {
//   final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
//   if (response.statusCode == 200) {
//     print(response.body);
//     print(response.statusCode);
//     final Map<String, dynamic> responseData = json.decode(response.body);
//     final List<Model> data = [Model.fromJson(responseData)]; // Convert the map to a list
//     todos.assignAll(data);
//   } else {
//   }
// }
