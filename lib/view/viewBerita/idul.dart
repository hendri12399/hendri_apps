
import 'package:flutter/material.dart';

class Idul extends StatefulWidget {
  const Idul({super.key});

  @override
  State<Idul> createState() => _IdulState();
}

class _IdulState extends State<Idul> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Berita Hendri", style: TextStyle(color: Colors.black54)),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "Alasan Masjid Al-Azhar gelar Shalat Idul Adha beda dengan Pemerintah",
                  style: TextStyle(fontSize: 40),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 15),
                child: Text(
                  "Minggu, 16 Juni 2024 | 08:00 WIB",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 15, right: 15),
                child: Image.asset("img/idul.jpeg"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 15),
                child: Text(
                    "Foto: Masjid Agung Al-Azhar gelar Salat Idul Adha, Minggu (16/6) pagi. (CNN Indonesia/Safir Makki)"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, left: 15),
                child: Text(
                  """Jakarta, CNN Indonesia --

Kepala Kantor Masjid Agung Al-Azhar Tatang Komara mengatakan Masjid Agung Al-Azhar menggelar Salat Idul Adha hari ini Minggu (16/6) karena mengikuti waktu wukuf di Arafah, Arab Saudi yang sudah digelar pada Sabtu (15/6).

Keputusan Masjid Al-Azhar ini berbeda dengan keputusan pemerintah hingga ormas Islam seperti NU dan Muhammadiyah yang telah memutuskan Hari Raya Idul Adha atau 10 Zulhijah 1445 H jatuh pada Senin (17/6).

"Kami bersepakat tentunya atas informasi yang dikeluarkan Saudi Arabia berkaitan dengan wukuf di Arafah itu jatuh pada tanggal 15 Juni 2024, tentunya keesokan harinya kan Iduladha. Maka kami menetapkan untuk shalat Idul Adha kali ini adalah pada tanggal 16 Juni 2024, hari Ahad," kata Tatang ketika ditemui di Masjid Agung Al-Azhar, Jakarta, Minggu.

Tatang juga menjelaskan Masjid Al-Azhar melaksanakan Salat Idul Adha pada hari ini karena memperhatikan pada keputusan Organisasi Konferensi Islam (OKI), yang menyatakan Idul Adha akan digelar sehari setelah pelaksanaan wukuf.

Ia mengatakan Masjid Al Azhar sebetulnya telah menyiapkan dua opsi dalam pelaksanaan salat. Opsi pertama di gelar di lapangan yang terletak di depan Masjid. Namun opsi ini tak jadi dilakukan lantaran kondisi tak memungkinkan lantaran sehabis hujan.

"Maka ke Plan B, ada di Masjid dan di aula. Insyaallah tidak khawatir untuk jemaah sekalian, masjid kita dan aula serta lingkungannya bisa menampung 12 ribu-13 ribu jemaah, kita siapkan baik sarana sampai ke pengeras suara Insyaallah akan terdengar," kata dia.

Tatang mengatakan pelaksanaan Salat Id kali ini mengambil tema untuk tetap berempati kepada sesama saudara umat Islam di Palestina.

"Kita punya empati, empati kepada sesama untuk berkorban tentunya secara pikiran, materi, bagaimana saudara kita Palestina merdeka," kata dia.

(rzr/mik)""",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
