import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Berita extends StatefulWidget {
  const Berita({super.key});

  @override
  State<Berita> createState() => _BeritaState();
}

class _BeritaState extends State<Berita> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Berita Hendri",
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              containerAtas("Terbaru"),
              containerAtas("Trending"),
              containerAtas("Timnas Indonesia"),
              containerAtas("Haji 2024"),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Stack(children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  beritaGeser(
                      "img/asean.jpg",
                      "Jum'at, 14 Juni 2024 | 15:00 WIB",
                      "3 Negara ASEAN yang Pernah Lolos ke Putaran Ketiga Kualifikasi Piala Dunia 2026 Zona Asia",
                      "/asean"),
                  beritaGeser(
                      "img/idul.jpeg",
                      "Minggu, 16 Juni 2024 | 08:00 WIB",
                      "Alasan Masjid Al-Azhar gelar Shalat Idul Adha beda dengan Pemerintah",
                      "/idul"),
                  beritaGeser(
                      "img/basuki.jpeg",
                      "Minggu, 16 Juni 2024 | 08:15 WIB",
                      "PDIP Diisukan Usul Anies di Pilkada Jakarta, Ahok Buka Suara",
                      "/basuki"),
                ],
              ),
            ),
          ]),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text("17 Juni-2024 | 21:26"),
                      SizedBox(height: 5,),
                      Text("""5 Langkah Mudah Buat Seseorang 
Nyaman Bicara Sama Kamu"""),
                    ],
                  ),
                ),
                Container(
                    height: 100,
                    width: 100,
                    child: Image.asset(
                  "img/bicara.jpg",
                ))
              ],
            ),
          ),
          Divider(
            indent: 10,
            endIndent: 10,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text("17 Juni-2024 | 21:25"),
                      SizedBox(height: 5,),
                      Text("""5 Tips Membuat Konten yang
Menarik dan Berkualitas""")
                    ],
                  ),
                ),
                Container(
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      "img/konten.jpg",
                    ))
              ],
            ),
          ),
          Divider(
            indent: 10,
            endIndent: 10,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text("17 Juni-2024 | 21:16"),
                      SizedBox(height: 5,),
                      Text("""5 Jenis Lemari Pakaian yang 
Cocok untuk Hunian Kost""")
                    ],
                  ),
                ),
                Container(
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      "img/Pakaian.jpg",
                    ))
              ],
            ),
          ),
          Divider(
            indent: 10,
            endIndent: 10,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text("17 Juni-2024 | 21:05"),
                      SizedBox(height: 5,),
                      Text(""" Layanan Kargo Haji Pos Indonesia 
Kembali Dibuka Setelah Idul Adha""")
                    ],
                  ),
                ),
                Container(
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      "img/haji.jpg",
                    ))
              ],
            ),
          ),
          Divider(
            indent: 10,
            endIndent: 10,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text("17 Juni-2024 | 21:00"),
                      SizedBox(height: 5,),
                      Text("""Sinopsi dan Jadwal Tayang Film
Mungkin Esok Lusa atau Nanti""")
                    ],
                  ),
                ),
                Container(
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      "img/sinopsis.jpg",
                    ))
              ],
            ),
          ),
          Divider(
            indent: 10,
            endIndent: 10,
            color: Colors.black,
          )
        ],
      ),
    );
  }

  Padding beritaGeser(String image, String text2, String text3, String text4) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Container(
        height: 250,
        width: 340,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.grey.shade300),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            InkWell(
              onTap: () {
                Get.toNamed(text4);
              },
              child: Image.asset(
                image,
                fit: BoxFit.contain,
              ),
            ),
            Text(
              text2,
              style: TextStyle(fontSize: 10),
            ),
            SizedBox(height: 10),
            Text(text3)
          ],
        ),
      ),
    );
  }

  Container containerAtas(String text1) {
    return Container(
      height: 30,
      width: 80,
      alignment: Alignment.center,
      child: Text(
        text1,
        style: TextStyle(fontSize: 13, height: 1),
        textAlign: TextAlign.center,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
