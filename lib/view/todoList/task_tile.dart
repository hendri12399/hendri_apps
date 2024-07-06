
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class TaskTile extends StatelessWidget {
  const TaskTile(
      {super.key, required this.size, this.time, this.des, this.press});

  final Size size;

  // kenapa pake tanda tanya, karena nilainya masih null kalo ga ada data.
  final String? time, des;

  //kenapa pake fungsi callback? karena supaya fungsi nya dijalankan ketika semua prosess sudah dilakukan
  final Callback? press;

  @override
  Widget build(BuildContext context) {
    // ini buat task yang ada setelah di ketik darii add screen
    return Material(
      elevation: 5,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        // ini isian di dalam nya dbikin row, karena ada tanggal, deskripsi tasknya dan icon hapus
        child: Row(
          children: [
            Container(
              // kenapa dikasih 0,1 karena suoaya ukurannya 10% dari layar
              alignment: Alignment.center,
              width: size.width * 0.1,
              height: double.maxFinite,
              color: Colors.cyan,
              child: Text(
                "$time",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text("$des"),
            )),
            //untuk bisa di klik
            GestureDetector(
              onTap: press,
              child: Container(
                alignment: Alignment.center,
                width: size.width * 0.1,
                height: double.maxFinite,
                color: Colors.cyan,
                child: Icon(Icons.delete, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
