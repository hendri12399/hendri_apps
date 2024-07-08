import 'package:learning_project/model/list_task.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:learning_project/route/route.dart';

// cara make hive
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var appDocumentDirectory =
      await pathProvider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  Hive.registerAdapter(TaskAdapter());
  await Hive.openBox<Task>("task");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      getPages: CustomRoute().route,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Belajar"),
      ),
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("img/main.png"), fit: BoxFit.cover)),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildContainer("/variabel", "Variabel", Colors.yellow),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child:
                      buildContainer("/biodata", "Biodata", Colors.pinkAccent),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: buildContainer(
                      "/konversiSuhu", "Konversi Suhu", Colors.cyan),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: buildContainer(
                      "/berita", "Baca Berita", Colors.greenAccent),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: buildContainer("/khodam", "Cek Khodam", Colors.red),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child:
                      buildContainer("/counter", "Counter App", Colors.purple),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: buildContainer(
                      "/todoscreen", "To Do List App", Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  Container buildContainer(text1, text2, Color) => Container(
        width: 100,
        height: 50,
        alignment: Alignment.center,
        color: Color,
        child: InkWell(
            onTap: () {
              Get.toNamed(text1);
            },
            child: Text(text2)),
      );
}

///tugas
///bikin aplikasi yang didalemnya ada login google, ada fitur maps, pake database firabase
/// (apps list restaurant di maps)