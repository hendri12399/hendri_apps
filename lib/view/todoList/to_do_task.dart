import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_project/controller/controller_task.dart';

class ToDoTask extends StatefulWidget {
  const ToDoTask({super.key});

  @override
  State<ToDoTask> createState() => _ToDoTaskState();
}

class _ToDoTaskState extends State<ToDoTask> {
  ControllerTask controller = Get.put(ControllerTask());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.cyan,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Add New Task",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 60),
            TextField(
              controller: controller.textEditingController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.black12,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                hintText: "Enter Task Description",
              ),
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                controller.addTask();
                // supaya ketika nulis task di textfield valuenya pindah kelayar depan
                Get.back();
              },
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.cyan),
                child: Text("Add Task"),
              ),
            )
          ],
        ),
      )),
    );
  }
}
