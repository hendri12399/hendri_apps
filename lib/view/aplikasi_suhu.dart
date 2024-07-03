import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_project/controller/controller_suhu.dart';

class ConverterSuhu extends StatefulWidget {
  const ConverterSuhu({super.key});

  @override
  State<ConverterSuhu> createState() => _ConverterSuhuState();
}

class _ConverterSuhuState extends State<ConverterSuhu> {
  var controller = Get.put(ControllerSuhu());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplikasi Konversi Suhu"),
      ),
      ///stack, container image. untuk bikin backgoround.
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("img/suhu.jpg"), fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextFormField(
                decoration:
                    InputDecoration(hintText: "Masukan nilai suhu Celcius"),
                keyboardType: TextInputType.number,

                /// supaya input nya bukan huruf tapi angka
                controller: controller.nilaiController,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    color: Colors.yellow,
                    child: Column(
                      children: [
                        Text(
                          "Kelvin",
                          style: TextStyle(fontSize: 20),
                        ),
                        Obx(
                          () => Text(
                            "${controller.kelvin}",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.pinkAccent,
                    child: Column(
                      children: [
                        Text(
                          "Fahrenheit",
                          style: TextStyle(fontSize: 20),
                        ),
                        Obx(
                          () => Text(
                            "${controller.fahrenheit}",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    child: Column(
                      children: [
                        Text(
                          "Reamur",
                          style: TextStyle(fontSize: 20),
                        ),
                        Obx(
                          () => Text(
                            "${controller.reamur}",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                color: Colors.cyan,
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () => controller.konversi(),
                  child: Text("Konversi"),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
