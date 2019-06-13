import 'package:flutter/material.dart';
import './textstyle.dart';

class Tahapanevakuasi extends StatefulWidget {
  @override
  _TahapanevakuasiState createState() => _TahapanevakuasiState();
}

class _TahapanevakuasiState extends State<Tahapanevakuasi> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false ,
      appBar: new AppBar(
        title: new Text(
          'Tahapan Evakuasi Tsunami',
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
              
            //   new Text(
            //   "\nTahapan Evakuasi Tsunami\n",
            //    textAlign: TextAlign.center,
            //     style: new TextStyle(fontSize: 46.0, fontFamily: 'Montserrat', letterSpacing: 1.0, fontWeight: FontWeight.bold, color: Colors.black),  
            // ),

            new Text(
              "\n\nBencana tsunami memiliki potensi bahaya yang besar jika terjadi pada skala gelombang tinggi (puluhan meter). Sifat gelombang tsunami yang destruktif dapat mengancam keselamatan hidup manusia. Oleh sebab itu, perlu dilakukan upaya yang sistematis dan terencana untuk meminimalisir tingkat kerusakan dan risiko bahaya tsunami terutama di wilayah yang masuk kategori sangat rawan tsunami.\n\nMerujuk pada apa yang sudah dipublikasikan oleh BNPB dalam Buku Pedoman Latihan Kesiapsiagaan Bencana (April 2017) bahwa salah satu upaya penting dalam mengurangi risiko kerusakan bahaya tsunami adalah dengan meningkatkan kapasitas masyarakat yang rensponsif terhadap kejadian bencana dan mampu melakukan tindakan preventif dan represif dengan baik.",
              textAlign: TextAlign.left,
              style: Style.commonTextStyle,
            ),

            new Text(
              "\n\nHal-hal yang perlu diperhatikan setelah terjadi tsunami adalah sebagai berikut:",
              textAlign: TextAlign.left,
              style: Style.titleTextStyle,
            ),

            new Text(
              "\n1. Hati-hati jika ada kerusakan instalasi listrik PLN dan segera laporkan jika ada kerusakan.",
              textAlign: TextAlign.left,
              style: Style.commonTextStyle,
            ),

            new Text(
              "\n2. Pastikan diri, keluarga, teman, atau tetangga dalam kondisi selamat.",
              textAlign: TextAlign.left,
              style: Style.commonTextStyle,
            ),

            new Text(
              "\n3. Segera obati jika ada yang terluka, jika perlu segera hubungi pihak medis yang berwenang.",
              textAlign: TextAlign.left,
              style: Style.commonTextStyle,
            ),

            new Text(
              "\n4. Jangan memasuki wilayah terdampak tsunami sebelum keadaan dinyatakan aman.",
              textAlign: TextAlign.left,
              style: Style.commonTextStyle,
            ),

            new Text(
              "\n5. Hindari area sekitar bangunan yang roboh/rusak.",
              textAlign: TextAlign.left,
              style: Style.commonTextStyle,
            ),

            new Text(
              "\n6. Melaporkan situasi diri dan lingkungan sekitar kepada pihak berwajib.",
              textAlign: TextAlign.left,
              style: Style.commonTextStyle,
            ),
            
            new Text(
              "\n7. Gotong royong membersihkan wilayah terdampak.",
              textAlign: TextAlign.left,
              style: Style.commonTextStyle,
            ),

            new Text(
              "\n8. Terus update informasi terbaru tentang tsunami.",
              textAlign: TextAlign.left,
              style: Style.commonTextStyle,
            ),

            new Text(
              "\n9. Hindari menggunakan lilin karena akan munul risiko terjadi kebakaran.",
              textAlign: TextAlign.left,
              style: Style.commonTextStyle,
            ),

            new Text(
              "\n10. Gunakan lampu senter untuk mempermudah penglihatan saat gelap. \n",
              textAlign: TextAlign.left,
              style: Style.commonTextStyle,
            ),

              ],
            ),
          ),
        )
        ),
      );
  }
    }