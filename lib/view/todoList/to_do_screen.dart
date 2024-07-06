import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_project/controller/controller_task.dart';
import 'package:learning_project/view/todoList/task_tile.dart';

class ToDoScreen extends StatefulWidget {
  const ToDoScreen({super.key});

  @override
  State<ToDoScreen> createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  final ControllerTask controller = Get.put(ControllerTask());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyan,
        onPressed: () {
          Get.toNamed("/todotask");
        },
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Icon(Icons.add),
        ),
      ),
      body: SafeArea(
        // ini obx untuk nampilin perubahan dari fungsi
        // kalo list nya  ga ada , pake codingan no task found,
        // kalo ada (pemisah pake : ), itu pake yang listview.builder
          child: Obx(() =>
          (controller.taskList.isEmpty) ? Center(
            child: Text("No Task Found", style: TextStyle(fontSize: 30),),
          ):Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListView.builder(
              // item count digunakan untuk seberapa banayak item yang dibuat
              // kenapa pake .length karena biar bisa sesuai dengan penambahan nya mau berapa item yang dibuat
                itemCount: controller.taskList.length,
                // item builder untuk memanggil fungsi dari item yang dibuat
                // kennapa disebelah .tasklist ada [], karena bentuk nya list, makanya ada itu dan diberi index
                itemBuilder: (context, index) =>
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: TaskTile(
                        size: size,
                        time: controller.taskList[index].taskCreated,
                        des: controller.taskList[index].task,
                        press: () {
                          //dalam argumen disi dengan controller.tasklist karena kita mau menghapus list tersebbut.
                          controller.deleteTask(controller.taskList[index]);
                        },
                      ),
                    )),
            // task tile container buat task yang ada setelah di ketik darii add screen
          ))
      ),);
  }
}
