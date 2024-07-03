import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerSuhu extends GetxController{
  TextEditingController nilaiController = TextEditingController();

  var inputUser = 0.0;
  var reamur = 0.0.obs;
  var fahrenheit = 0.0.obs;
  var kelvin = 0.0.obs;

  konversi () {
      inputUser = double.parse(nilaiController.text);
      reamur.value = 4/5 * inputUser;
      fahrenheit.value = 9/5 * inputUser + 32;
      kelvin.value = inputUser + 273;
  }
}

