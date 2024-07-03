import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_project/controller/controller_counterapp.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  var controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // menampung rumus kalo diklik berkurang dari function di controller
              IconButton(
                  onPressed: () {
                    controller.minusNumber();
                  },
                  icon: const Icon(Icons.remove, color: Colors.blue,)),
              //menampung nilai untuk dirubah ui nya
              Obx(() => Text("${controller.number.value}")),
              // menampung rumus kalo diklik bertambah dari function di controller
              IconButton(
                  onPressed: () {
                    controller.plusNumber();
                  },
                  icon: const Icon(Icons.add, color: Colors.blue)),
            ],
          ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){
              controller.resetNumber();
            }, child: Text("Reset"))
        ]),
      ),
    );
  }
}
