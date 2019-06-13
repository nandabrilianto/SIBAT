import 'package:flutter/material.dart';
import './textstyle.dart';

class Mitigasi extends StatefulWidget {
  @override
  _MitigasiState createState() => _MitigasiState();
}

class _MitigasiState extends State<Mitigasi> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      appBar: new AppBar(
        title: new Text(
          'Mitigasi Tsunami',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: new Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          child: new SingleChildScrollView(
            child: new ConstrainedBox(
              constraints: new BoxConstraints(),
              child: new Column(
                children: <Widget>[
                  // new Text(
                  //   "\nMitigasi Tsunami \n",
                  //   textAlign: TextAlign.center,
                  //   style: new TextStyle(fontSize: 46.0, fontFamily: 'Montserrat', letterSpacing: 1.0, fontWeight: FontWeight.bold, color: Colors.black),
                  // ),
                  new Text(
                    "\n\nMitigasi adalah segala tindakan yang dilakukan untuk mengurangi atau menghilangkan risiko jangka panjang bahaya bencana alam dan akibatnya terhadap manusia dan harta benda. Berdasarkan Peraturan Pemerintah (PP) No. 64 tahun 2010 Pasal 1 (4) yang dimaksud Mitigasi Bencana adalah upaya untuk mengurangi risiko bencana, baik secara struktur atau fisik melalui pembangunan fisik alami dan/atau buatan maupun nonstruktur atau nonfisik melalui peningkatan kemampuan menghadapi ancaman bencana di wilayah pesisir dan pulau – pulau kecil. \n",
                    textAlign: TextAlign.left,
                    style: Style.commonTextStyle,
                  ),
                  new Text(
                    "Mitigasi tsunami adalah sistem untuk mendeteksi tsunami dan memberi peringatan untuk mencegah jatuhnya korban. Ada 2 jenis sistem peringatan tsunami yaitu sistem peringatan tsunami internasional dan sistem peringatan tsunami regional.",
                    textAlign: TextAlign.left,
                    style: Style.commonTextStyle,
                  ),
                  new Text(
                    "\n\nKegiatan mitigasi bencana non struktur/non fisik (pasal 16) mencakup 7 (tujuh) aspek yakni: \n",
                    textAlign: TextAlign.left,
                    style: Style.titleTextStyle,
                  ),
                  new Text(
                    "1.Penyusunan peraturan perundang-undangan\n\n2. Penyusunan peta rawan bencana\n\n3.Penyusunan peta risiko bencana\n\n4.Penyusunan analisis mengenai dampak lingkungan (amdal)\n\n5.Penyusunan tata ruang\n\n6.Penyusunan zonasi\n\n7.Pendidikan, penyuluhan, dan penyadaran masyarakat\n",
                    textAlign: TextAlign.left,
                    style: Style.commonTextStyle,
                  ),
                  new Text(
                    "\nLangkah-langkah yang harus dilakukan sebelum terjadinya tsunami adalah sebagai berikut: \n",
                    textAlign: TextAlign.left,
                    style: Style.titleTextStyle,
                  ),
                  new Text(
                    "1. Membangun sistem peringatan dini tsunami\n\n2. Membangun shelter atau tempat evakuasi disekitar wilayah rawan tsunami\n\n3. Meningkatkan pengetahuan masyarakat seputar bahaya tsunami\n\n4. Melakukan pelaporan secara cepat jika ada tanda-tanda akan terjadi tsunami\n\n5. Aktif mencari informasi seputar bencana melalui media informasi (radio, TV, internet)\n\n6. Sedia dan siaga alat komunikasi alternative jika ponsel tidak berfungsi.",
                    textAlign: TextAlign.left,
                    style: Style.commonTextStyle,
                  ),
                  new Text(
                    "\n\nLangkah-langkah yang harus dilakukan jika terjadi tsunami adalah sebagai berikut: \n",
                    textAlign: TextAlign.left,
                    style: Style.titleTextStyle,
                  ),
                  new Text(
                    "\n1. Saat terdengar sirine early warning system (EWS), jangan panik dan pastikan semua anggota keluarga lengkap",
                    textAlign: TextAlign.left,
                    style: Style.commonTextStyle,
                  ),
                  new Text(
                    "\n2. Pahami terlebih dahulu status peringatan dini",
                    textAlign: TextAlign.left,
                    style: Style.commonTextStyle,
                  ),
                  new Text(
                    "\n3. Waspada apabila air laut surut secara tiba-tiba pasca gempa bumi",
                    textAlign: TextAlign.left,
                    style: Style.commonTextStyle,
                  ),
                  new Text(
                    "\n4. Segera melakukan evakuasi mandiri sesuai jalur evakuasi yang sudah ditentukan jika gelombang diperkirakan tinggi lebih dari 3 meter",
                    textAlign: TextAlign.left,
                    style: Style.commonTextStyle,
                  ),
                  new Text(
                    "\n5. Jangan lupa membawa perlengkapan darurat (makanan, minuman, P3K, dan lain-lain)",
                    textAlign: TextAlign.left,
                    style: Style.commonTextStyle,
                  ),
                  new Text(
                    "\n6. Jauhi pantai dan sungai menuju tempat yang tinggi atau sesuai titik kumpul evakuasi",
                    textAlign: TextAlign.left,
                    style: Style.commonTextStyle,
                  ),
                  new Text(
                    "\n7. Berlari menjauhi pantai ke arah tegak lurus garis pantai)",
                    textAlign: TextAlign.left,
                    style: Style.commonTextStyle,
                  ),
                  new Text(
                    "\n8. Jika gelombang pertama sudah berlalu, jangan lekas turun, tetap di tempat evakuasi sebab ada kemungkinan gelombang susulan akan datang",
                    textAlign: TextAlign.left,
                    style: Style.commonTextStyle,
                  ),
                  new Text(
                    "\n9. Saat evakuasi tidak dianjurkan menggunakan kendaraan)",
                    textAlign: TextAlign.left,
                    style: Style.commonTextStyle,
                  ),
                  new Text(
                    "\n10. Tunggu pemberitahuan selanjutnya dari pihak berwajib tentang situasi keamanan)",
                    textAlign: TextAlign.left,
                    style: Style.commonTextStyle,
                  ),
                  new Text(
                    "\n11. Selalu bantu dan prioritaskan orang tua, wanita, anak-anak, disabilitas, dan siapapun yang membutuhkan bantuan",
                    textAlign: TextAlign.left,
                    style: Style.commonTextStyle,
                  ),
                  new Text(
                    "\n\n Siklus Manajemen Bencana\n",
                    style: Style.titleTextStyle,
                  ),
                  new Image.asset('images/siklusbencana.jpg'),
                  new Text(
                    "\n1. Tahap prabencana dapat dibagi menjadi kegiatan mitigasi dan kesiapsiagaan. Selanjutnya pada tahap tanggap darurat adalah respon sesaat setelah terjadi bencana. Pada tahap pascabencana, manajemen yang digunakan adalah rehabilitasi dan rekonstruksi.",
                    style: Style.commonTextStyle,
                  ),
                  new Text(
                    "\n2. Tahap prabencana meliputi mitigasi dan kesiapsiagaan terhadap tsunami. Upaya tersebut sangat penting bagi masyarakat yang tinggal di daerah rawan bencana tsunami sebagai persiapan menghadapi bencana tsunami. Kesiapsiagaan adalah serangkaian kegiatan yang dilakukan untuk mengantisipasi bencana melalui pengorganisasian.",
                    style: Style.commonTextStyle,
                  ),
                  new Text(
                    "\n3. Tanggap darurat bencana adalah serangkaian kegiatan yang dilakukan dengan segera pada saat kejadian bencana untuk menangani dampak buruk yang ditimbulkan bencana tsunami.",
                    style: Style.commonTextStyle,
                  ),
                  new Text(
                    "\n4. Tahap pascabencana meliputi usaha rehabilitasi dan rekonstruksi sebagai upaya mengembalikan keadaan masyarakat pada situasi yang kondusif, sehat, dan layak sehingga masyarakat dapat hidup seperti sedia kala sebelum bencana tsunami terjadi, baik secara fisik dan psikologis.\n",
                    style: Style.commonTextStyle,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
