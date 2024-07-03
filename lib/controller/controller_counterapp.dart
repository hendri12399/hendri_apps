
import 'package:get/get.dart';

class CounterController extends GetxController {
  // nilai awal 1
   var number = 1.obs;

    // function untuk mengurangi
    void minusNumber () =>number.value -= 1 ;
    // function untuk menambahkan
    void plusNumber () =>number.value += 1;
    // untuk mereset nilai
    void resetNumber(){
      number.value = 0;
    }

}