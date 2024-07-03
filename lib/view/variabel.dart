import 'package:flutter/material.dart';

class variabelView extends StatelessWidget {
  const variabelView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Variabel"),
        ),
        body: Column(
          children: [
            Text(
                '''Apa itu variabel ? Variabel merupakan sebuah wadah yang dapat digunakan untuk menyimpan nilai '''),
            Text(''' Variable tersusun atas 3, 
            1. Type data
            2. Nama variable 
            3. nilai dari variable tersebut
            
            contoh  :
            String nama = "hendri";
            
            string merupakan type data, nama merupakan nama variable dan hendri merupakan nilai berdasarkan tipe variable'''),
            Text(
                ''' Variable dapat berisi sebuah nilai langsung atau tidak (Null) jika null harus diberi tanda tanya
                contoh 
                String? name = "" '''),
            Text(
                ''' Variable dapat diubah nilainya selama masih dalam kurung kurawal yang sama dan tidak bernilai final atau const.'''),
          ],
        ),
      );
  }
}
