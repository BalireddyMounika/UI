import 'package:get/get.dart';
import 'package:dio/dio.dart';

class HomeController extends GetxController {
  var response = "".obs;
  var isLoading = false.obs;

  void fetchData() async {
    try {
      isLoading.value = true;
      var dio = Dio();
      var url = "https://api.example.com/data";
      var apiResponse = await dio.get(url);

      response.value = apiResponse.data.toString();
    } catch (error) {
      response.value = "Error fetching data";
    } finally {
      isLoading.value = false;
    }
  }
}
