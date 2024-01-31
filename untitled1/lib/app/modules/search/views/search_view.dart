import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/app/themes/app_colors.dart';
import '../controllers/search_controller.dart';

class detailpage extends StatelessWidget {
  searchcontroller controller = Get.put(searchcontroller());
  TextEditingController search = TextEditingController();

  detailpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Api Call through GETX')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: TextField(
              controller: search,
              onChanged: (value) {
                controller.Search(value);
              },
              decoration: const InputDecoration(
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                ),
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: Obx(
              () => ListView.builder(
                itemCount: controller.search.length,
                itemBuilder: (context, index) {
                  final todo = controller.search[index];
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: AppColors.whitecolor,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Title: ${todo.title}',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('ID: ${todo.id}'),
                          Text('User ID: ${todo.userId}'),
                          Text('Completed: ${todo.completed}'),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
