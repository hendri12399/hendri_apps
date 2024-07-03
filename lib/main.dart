import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_project/route/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
            image: DecorationImage(image: AssetImage("img/main.png"),
            fit: BoxFit.cover)
          ),
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
                  child: buildContainer(
                      "/khodam", "Cek Khodam", Colors.red),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: buildContainer(
                      "/counter", "Counter App", Colors.purple),
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
