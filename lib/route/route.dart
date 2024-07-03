import 'package:get/get.dart';
import 'package:learning_project/view/aplikasi_suhu.dart';
import 'package:learning_project/view/cek_khodam.dart';
import 'package:learning_project/view/counter_app.dart';
import 'package:learning_project/view/viewBerita/asean.dart';
import 'package:learning_project/view/viewBerita/basuki.dart';
import 'package:learning_project/view/viewBerita/berita.dart';
import 'package:learning_project/view/biodata.dart';
import 'package:learning_project/view/variabel.dart';
import 'package:learning_project/view/viewBerita/idul.dart';

class CustomRoute {
  List<GetPage> route = <GetPage>[
    GetPage(name: "/variabel", page: () => variabelView()),
    GetPage(name: "/biodata", page: () => BiodataView()),
    GetPage(name: "/konversiSuhu", page: () => ConverterSuhu()),
    GetPage(name: "/berita", page:()=> Berita()),
    GetPage(name: "/asean", page: ()=> Asean()),
    GetPage(name: "/idul", page: ()=> Idul()),
    GetPage(name: "/basuki", page: ()=> Basuki()),
    GetPage(name: "/khodam", page: ()=> Khodam()),
    GetPage(name: "/counter", page: ()=> CounterApp()),


  ];
}
