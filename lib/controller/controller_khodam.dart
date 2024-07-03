import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:learning_project/model/list_khodam.dart';

class KhodamController extends GetxController {
  // buat nilai awal (kosong)
  var nameController = TextEditingController();
  var name = "".obs;

  cekKhodam() => name.value = khodams[generateRandomNumber()];

//buat fungsi tujuannya untuk ngerandom list nya
  int generateRandomNumber(){
    Random random = Random();
    int randomNumber = random.nextInt(khodams.length);
    return randomNumber;
  }
  // berguna unutk menghapus value yang ada di text editing,
  // controller dan mengubah buttonnya menjadi tekan kembali
  void resetKhodam() {
    name.value = "";
    nameController.clear();
  }
}

