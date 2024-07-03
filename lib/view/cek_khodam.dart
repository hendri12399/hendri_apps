import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_project/controller/controller_khodam.dart';

class Khodam extends StatefulWidget {
  const Khodam({super.key});

  @override
  State<Khodam> createState() => _KhodamState();
}

class _KhodamState extends State<Khodam> {
  var controller = Get.put(KhodamController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cek Khodam"),
        centerTitle: true,
      ),
      body: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "CEK KHODAM KAMU DISINI",
              style: TextStyle(fontSize: 30),
            ),
            Icon(
              Icons.arrow_drop_down,
              size: 15,
            ),
            Obx(
              () => TextFormField(
                //  enabled, ketika kosong bisa disis. tapi kalo udah disi dan klik tekan gabisa di ketik lagi kecuali tekan coba lagi
                enabled: controller.name.isEmpty,
                decoration: InputDecoration(hintText: "Ketik Nama"),
                keyboardType: TextInputType.text,
                controller: controller.nameController,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Obx(() =>
            // set value nya kosong dulu pake tanda tanya dulu
                Text("Khodam kamu adalah ${controller.name.value ?? ""}", style: TextStyle(fontSize: 20),)),
            SizedBox(
              height: 15,
            ),
            Obx(
              () => ElevatedButton(
                //ini diset kalo kosong button nya tekan, kalau udah diisi coba lagi
                // jika nama kosong, menjalankan cek khodam. kalo udah keisi reset khodam
                  onPressed: () => controller.name.value.isEmpty
                      ? controller.cekKhodam()
                      : controller.resetKhodam(),
                  child: Text(
                    // pengkondisian mengikuti kode diatas
                      controller.name.value.isEmpty ? "Tekan" : "Coba lagi")),
            )
          ],
        ),
      ]),
    );
  }
}
