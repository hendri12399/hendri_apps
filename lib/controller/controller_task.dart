import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:learning_project/model/list_task.dart';
import 'package:hive/hive.dart';

//hive untuk library, jadi harus baca dokumentasi

class ControllerTask extends GetxController {
  final _taskList = <Task>[].obs;

  //tulisan yang di tulis di textfield bisa tersambung dengan lainnya/ ke save
  // atau untuk mendapatkan nilai dari textfield
  TextEditingController textEditingController = TextEditingController();

  Box<Task> task = Hive.box("task");

  @override
  void onInit() {
    super.onInit();
    getTask();
  }

  //untuk ngambil value dari box
  void getTask() {
    _taskList.value = task.values.toList();
  }

  @override
  void dispose() {
    super.dispose();
    textEditingController.clear();
  }

// get, untuk mengambil nilai dari obs
  List<Task> get taskList => _taskList.value.toList();

  // addtask, fungsi untuk menambah task baru, berupa tanggal dan deskripsinya apa dari textfield
  void addTask() {
    // txt, untuk nampung nilai dari textfield. tanda seru karena nilainya ga boleh null
    String txt = textEditingController.text;
    DateTime time = DateTime.now();

    // tasklist.add, .add digunakan untuk menambahkan data
    // to string karena nilainya string
    task.add(Task(txt, time.day.toString()));
    getTask();
    // untuk menampung nilai string kosong kalo belum ada valuenya.
    textEditingController.text = "";
  }

  void deleteTask(Task task, int index) {
    //untuk menghapus task yang udah dibuat
    this.task.deleteAt(index);
    getTask();
  }
}
