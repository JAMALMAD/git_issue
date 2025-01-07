import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/controller/controller.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterController controller = Get.put(CounterController());

    return Scaffold(
      appBar: AppBar(title: const Text('GetX')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Container(
              height: 20,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Text(
                "${controller.counter.value}",
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}