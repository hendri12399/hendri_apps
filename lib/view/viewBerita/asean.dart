
import 'package:flutter/material.dart';

class Asean extends StatefulWidget {
  const Asean({super.key});

  @override
  State<Asean> createState() => _AseanState();
}

class _AseanState extends State<Asean> {
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
                  "3 Negara ASEAN yang Pernah Lolos ke Putaran Ketiga Kualifikasi Piala Dunia 2026 Zona Asia",
                  style: TextStyle(fontSize: 40),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 15),
                child: Text(
                  "Jum'at, 14 Juni 2024 | 15:00 WIB",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 15, right: 15),
                child: Image.asset("img/asean.jpg"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 15),
                child: Text(
                    "Foto: Perayaan Lolosnya Timnas Indonesia ke Babak Round 3 Ajang Kualifikasi Piala Dunia 2026. (pssi.org)"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, left: 15),
                child: Text(
                  """Suara.com - Kiprah negara-negara ASEAN memang tak begitu mentereng di kancah elite. Sebab, hanya ada segelintir saja yang mampu mengukir kesuksesan lolos hingga Putaran Ketiga Kualifikasi Piala Dunia.

Selama ini, para kontestan asal ASEAN memang hanya mentok berpartisipasi di Putaran Kedua saja. Tak banyak yang bisa mencatatkan keberhasilan untuk merebut tiket ke Putaran Ketiga Kualifikasi Piala Dunia.

Pada edisi yang terbaru, hanya ada satu peserta saja yang mewakili Asia Tenggara di Putaran Ketiga Kualifikasi Piala Dunia 2026 Zona Asia. Ini juga termasuk sebagai sejarah baru karena menjadi kelolosan pertama.

Berikut Suara.com menyajikan tiga negara asal ASEAN yang pernah merebut tiket lolos ke Putaran Ketiga Kualifikasi Piala Dunia.

1. Timnas Indonesia

Timnas Indonesia menjadi negara ASEAN terbaru yang sukses melaju ke Putaran Ketiga. Ini merupakan pencapaian pertama karena selama ini skuad Merah Putih hanya mentok berada di Putaran Kedua.

Catatan itu diraih skuad Garuda setelah berhasil menumbangkan Filipina pada laga pamungkas Grup F. Dengan hasil ini, Timnas Indonesia sukses merebut tiket ke Putaran Ketiga sebagai runner-up.

Pencapaian ini termasuk istimewa. Sebab, Shin Tae-yong akhirnya kembali mengukir sejarah baru bagi Timnas Indonesia. Namun, mereka juga harus hati-hati karena lawan yang dihadapi bakal semakin berat.

2. Timnas Thailand

Sebelumnya Timnas Indonesia, negara asal ASEAN pertama yang sukses mengukir pencapaian serupa ialah Timnas Thailand. Ketika itu, skuad Gajah Perang sukses lolos ke Putaran Ketiga Kualifikasi Piala Dunia 2018 Zona Asia.

Timnas Thailand yang saat itu diasuh oleh Kiatisuk Senamuang sukses menjuarai Grup F Putaran Kedua. Persaingan di Grup F saat itu berisi Irak, Vietnam, dan Taiwan. Dari enam laga, Thailand meraup total 12 angka.

Sebetulnya, saat itu Timnas Indonesia juga tergabung di Grup F. Sayangnya, intervensi yang dilakukan pemerintah terhadap PSSI berujung dengan sanksi FIFA.

3. Vietnam

Selain itu, Timnas Vietnam juga pernah mengukir pencapaian serupa pada edisi terakhir. Saat itu, skuad The Golden Star berhasil melaju ke Putaran Ketiga Kualifikasi Piala Dunia 2022 Zona Asia.

Skuad asuhan Park Hang-seo ketika itu berhasil menduduki posisi runner-up Grup G dengan koleksi 17 angka. Jumlah ini hanya terpaut satu poin saja dari Uni Emirat Arab yang menjadi pemuncak.

Tim-tim lain yang saat itu berada di Grup G ialah Malaysia, Thailand, dan Indonesia. Skuad Merah Putih terpaksa menjadi juru kunci karena hanya sanggup meraup satu poin saja.

Kontributor: Muh Faiz Alfarizie""",
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
