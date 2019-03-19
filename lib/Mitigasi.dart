import 'package:flutter/material.dart';

class Mitigasi extends StatefulWidget {
  @override
  _MitigasiState createState() => _MitigasiState();
}

class _MitigasiState extends State<Mitigasi> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false ,
      appBar: new AppBar(
        title: new Text(""),
      ),
      body: new Container(
        margin: EdgeInsets.all(20.0),
        child: new SingleChildScrollView(
          child: new ConstrainedBox(
            constraints: new BoxConstraints(),
            child: new Column(
              children: <Widget>[
              
              new Text(
              "Mitigasi Tsunami \n",
              textAlign: TextAlign.center,
              style: new TextStyle(fontSize: 25.0),
            ),

              new Text(
              "Mitigasi adalah segala tindakan yang dilakukan untuk mengurangi atau menghilangkan risiko jangka panjang bahaya bencana alam dan akibatnya terhadap manusia dan harta benda. Berdasarkan Peraturan Pemerintah (PP) No. 64 tahun 2010 Pasal 1 (4) yang dimaksud Mitigasi Bencana adalah upaya untuk mengurangi risiko bencana, baik secara struktur atau fisik melalui pembangunan fisik alami dan/atau buatan maupun nonstruktur atau nonfisik melalui peningkatan kemampuan menghadapi ancaman bencana di wilayah pesisir dan pulau – pulau kecil. \n"
              ,textAlign: TextAlign.left,
              style: new TextStyle(fontSize: 15.0),
            ),

             new Text(
              "Kegiatan mitigasi bencana non struktur/non fisik (pasal 16) mencakup 7 (tujuh) aspek yakni: \n"
              ,textAlign: TextAlign.left,
              style: new TextStyle(fontSize: 20.0),
            ),

            new Text("1.Penyusunan peraturan perundang-undangan\n2. Penyusunan peta rawan bencana\n3.Penyusunan peta risiko bencana\n4.Penyusunan analisis mengenai dampak lingkungan (amdal)\n5.Penyusunan tata ruang\n6.Penyusunan zonasi\n7.Pendidikan, penyuluhan, dan penyadaran masyarakat\n", 
            textAlign: TextAlign.left,
            style: new TextStyle(fontSize: 15.0),
            ),

            new Text("Langkah-langkah yang harus dilakukan sebelum terjadinya tsunami adalah sebagai berikut: \n"
            ,textAlign: TextAlign.left,
            style: new TextStyle(fontSize: 20.0),
            ),

            new Text("1. Membangun sistem peringatan dini tsunami\n2. Membangun shelter atau tempat evakuasi disekitar wilayah rawan tsunami\n3. Meningkatkan pengetahuan masyarakat seputar bahaya tsunami\n4. Melakukan pelaporan secara cepat jika ada tanda-tanda akan terjadi tsunami\n5. Aktif mencari informasi seputar bencana melalui media informasi (radio, TV, internet)\n6. Sedia dan siaga alat komunikasi alternative jika ponsel tidak berfungsi."
            ,textAlign: TextAlign.left,
            style: new TextStyle(fontSize: 15.0),
            ),

            new Text("\nLangkah-langkah yang harus dilakukan jika terjadi tsunami adalah sebagai berikut: \n",textAlign: TextAlign.left,
            style: new TextStyle(fontSize: 20.0),
            ),

            new Text("1. Saat terdengar sirine early warning system (EWS), jangan panik dan pastikan semua anggota keluarga lengkap"
            ,textAlign: TextAlign.left,
            style: new TextStyle(fontSize: 15.0),
            ),

            new Text("2. Pahami terlebih dahulu status peringatan dini" ,textAlign: TextAlign.left,
            style: new TextStyle(fontSize: 15.0),
            ),

            new Text("3. Waspada apabila air laut surut secara tiba-tiba pasca gempa bumi" ,textAlign: TextAlign.left,
            style: new TextStyle(fontSize: 15.0),
            ),

            new Text("4. Segera melakukan evakuasi mandiri sesuai jalur evakuasi yang sudah ditentukan jika gelombang diperkirakan tinggi lebih dari 3 meter" ,textAlign: TextAlign.left,
            style: new TextStyle(fontSize: 15.0),
            ),

            new Text("5. Jangan lupa membawa perlengkapan darurat (makanan, minuman, P3K, dan lain-lain)" ,textAlign: TextAlign.left,
            style: new TextStyle(fontSize: 15.0),
            ),

            new Text("6. Jauhi pantai dan sungai menuju tempat yang tinggi atau sesuai titik kumpul evakuasi" ,textAlign: TextAlign.left,
            style: new TextStyle(fontSize: 15.0),
            ),

            new Text("7. Berlari menjauhi pantai ke arah tegak lurus garis pantai)" ,textAlign: TextAlign.left,
            style: new TextStyle(fontSize: 15.0),
            ),

            new Text("8. Jika gelombang pertama sudah berlalu, jangan lekas turun, tetap di tempat evakuasi sebab ada kemungkinan gelombang susulan akan datang" ,textAlign: TextAlign.left,
            style: new TextStyle(fontSize: 15.0),
            ),

            new Text("9. Saat evakuasi tidak dianjurkan menggunakan kendaraan)" ,textAlign: TextAlign.left,
            style: new TextStyle(fontSize: 15.0),
            ),

            new Text("10. Tunggu pemberitahuan selanjutnya dari pihak berwajib tentang situasi keamanan)" ,textAlign: TextAlign.left,
            style: new TextStyle(fontSize: 15.0),
            ),

            new Text("11. Selalu bantu dan prioritaskan orang tua, wanita, anak-anak, disabilitas, dan siapapun yang membutuhkan bantuan" ,textAlign: TextAlign.left,
            style: new TextStyle(fontSize: 15.0),
            ),

              ],
            ),
          ),
        )
        ),
      );
  }
}
