import 'package:flutter/material.dart';

class Basuki extends StatefulWidget {
  const Basuki({super.key});

  @override
  State<Basuki> createState() => _BasukiState();
}

class _BasukiState extends State<Basuki> {
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
                  "PDIP Diisukan Usul Anies di Pilkada Jakarta, Ahok Buka Suara",
                  style: TextStyle(fontSize: 40),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 15),
                child: Text(
                  "Minggu, 16 Juni 2024 | 08:15 WIB",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 15, right: 15),
                child: Image.asset("img/basuki.jpeg"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 15),
                child: Text(
                    "Foto: Basuki Tjahaja Purnama (Ahok) (CNBC Indonesia)"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, left: 15),
                child: Text(
                  """Jakarta, CNBC Indonesia - Basuki Tjahaja Purnama alias Ahok buka suara perihal adanya isu atau wacana dari Partai PDIP yang akan mengusung Anies Rasyid Baswedan dalam Pemilihan Gubernur (Pilgub) DKI Jakarta tahun 2024 ini.

Bagi Ahok, PDIP merupakan partai demokratis. Ahok lantas menyebut nama yang akan diusung sesuai dengan usulan dari kader-kader di daerah. "PDIP partai yang demokratis, pasti menampung dan meneruskan ke DPP apa yang ada di akar rumput," ujar Ahok kepada CNNIndonesia, dikutip Minggu (16/6/2024).

Ahok menjelaskan bahwa perihal demokratis itu tercermin dari pengusulan nama kandidat. Ia mengaku tak hanya satu nama yang diusulkan.

Kendati demikian, Ahok tidak mau merespons spesifik terkait nama Anies. Ia menyerahkan hal itu ke pimpinan partai. "Bisa nanya ke DPP," tutur Ahok.

Sebagaimana diketahui, Anies telah menyatakan akan kembali mencalonkan diri sebagai gubernur DKI Jakarta. Hingga saat ini, Anies sudah mengantongi dukungan dari PKB. Anies kabarnya turut dilirik partai lain, yakni PDIP. Selama ini, partai berlambang banteng itu berseberangan dengan Anies. Namun, PDIP kini ikut memberi sinyal untuk mendukung.

Adapun hingga saat ini, memang belum ada langkah konkret yang dibuat kedua pihak. "Menarik juga pak Anies," terang Ketua Bidang Politik DPP PDIP Puan Maharani usai memimpin Rapat Paripurna di kompleks Parlemen, Jakarta, Selasa (4/6).

Anies dan Ahok pernah bertanding dalam Pilgub DKI Jakarta 2017. Anies maju bersama Sandiaga Uno berhasil mengalahkan Ahok dan Djarot Syaiful Hidayat dalam dua putaran.
""",
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
