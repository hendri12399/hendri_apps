import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:learning_project/model/list_task.dart';

class ControllerTask extends GetxController{

  final _taskList = <Task>[].obs;

  //tulisan yang di tulis di textfield bisa tersambung dengan lainnya/ ke save
  // atau untuk mendapatkan nilai dari textfield
  TextEditingController? textEditingController;

  @override
  void onInit(){
    super.onInit();
    textEditingController=TextEditingController();
  }

  @override
  void dispose(){
    super.dispose();
    textEditingController!.clear();
  }

// get, untuk mengambil nilai dari obs
  List<Task> get taskList => _taskList.value;


  // addtask, fungsi untuk menambah task baru, berupa tanggal dan deskripsinya apa dari textfield
  void addTask (){
    // txt, untuk nampung nilai dari textfield. tanda seru karena nilainya ga boleh null
    String txt = textEditingController!.text;
    DateTime time = DateTime.now();

    // tasklist.add, .add digunakan untuk menambahkan data
    // to string karena nilainya string
    _taskList.add(Task(txt, time.day.toString()));
    // untuk menampung nilai string kosong kalo belum ada valuenya.
    textEditingController!.text = "";

  }

  void deleteTask (Task task){
    //untuk menghapus task yang udah dibuat
    _taskList.remove(task);
  }
}



