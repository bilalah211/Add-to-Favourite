import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'fvrt_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = Get.put(FvouriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: controller.fruitList.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                    onTap: () {
                      if (controller.tempList
                          .contains(controller.fruitList[index].toString())) {
                        controller.isRemoveFvrt(
                            controller.fruitList[index].toString());
                      } else {
                        controller
                            .isAddFvrt(controller.fruitList[index].toString());
                      }
                    },
                    title: Text(controller.fruitList[index].toString()),
                    trailing: Obx(() => controller.tempList
                            .contains(controller.fruitList[index].toString())
                        ? const Icon(Icons.favorite, color: Colors.green)
                        : const Icon(Icons.favorite_border,
                            color: Colors.grey))),
              );
            }));
  }
}
