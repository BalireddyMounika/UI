import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Call Example'),
      ),
      body: Center(
        child: Obx(
              () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (controller.isLoading.value)
                CircularProgressIndicator()
              else
                Text(controller.response.value),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: controller.fetchData,
                child: Text('Fetch Data'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



void main() {
  Get.put(HomeController()); // Initialize your controller
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'API Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
    );
  }
}
