import 'package:get/get.dart';
import 'package:learning_project/view/aplikasi_suhu.dart';
import 'package:learning_project/view/cek_khodam.dart';
import 'package:learning_project/view/counter_app.dart';
import 'package:learning_project/view/todoList/to_do_screen.dart';
import 'package:learning_project/view/todoList/to_do_task.dart';
import 'package:learning_project/view/viewBerita/asean.dart';
import 'package:learning_project/view/viewBerita/basuki.dart';
import 'package:learning_project/view/viewBerita/berita.dart';
import 'package:learning_project/view/biodata.dart';
import 'package:learning_project/view/variabel.dart';
import 'package:learning_project/view/viewBerita/idul.dart';

class CustomRoute {
  List<GetPage> route = <GetPage>[
    GetPage(name: "/variabel", page: () => const variabelView()),
    GetPage(name: "/biodata", page: () => const BiodataView()),
    GetPage(name: "/konversiSuhu", page: () => const ConverterSuhu()),
    GetPage(name: "/berita", page:()=> const Berita()),
    GetPage(name: "/asean", page: ()=> const Asean()),
    GetPage(name: "/idul", page: ()=> const Idul()),
    GetPage(name: "/basuki", page: ()=> const Basuki()),
    GetPage(name: "/khodam", page: ()=> const Khodam()),
    GetPage(name: "/counter", page: ()=> const CounterApp()),
    GetPage(name: "/todoscreen", page: ()=> const ToDoScreen()),
    GetPage(name: "/todotask", page: ()=> ToDoTask())


  ];
}
